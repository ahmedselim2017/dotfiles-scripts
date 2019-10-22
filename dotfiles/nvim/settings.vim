" ███████╗███████╗████████╗████████╗██╗███╗   ██╗ ██████╗ ███████╗  ██╗   ██╗██╗███╗   ███╗
" ██╔════╝██╔════╝╚══██╔══╝╚══██╔══╝██║████╗  ██║██╔════╝ ██╔════╝  ██║   ██║██║████╗ ████║
" ███████╗█████╗     ██║      ██║   ██║██╔██╗ ██║██║  ███╗███████╗  ██║   ██║██║██╔████╔██║
" ╚════██║██╔══╝     ██║      ██║   ██║██║╚██╗██║██║   ██║╚════██║  ╚██╗ ██╔╝██║██║╚██╔╝██║
" ███████║███████╗   ██║      ██║   ██║██║ ╚████║╚██████╔╝███████║██╗╚████╔╝ ██║██║ ╚═╝ ██║
" ╚══════╝╚══════╝   ╚═╝      ╚═╝   ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝╚═╝ ╚═══╝  ╚═╝╚═╝     ╚═╝ 


" General settings {{{
filetype plugin indent on "load file rules
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif "Jump the last position when reopening a file
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set title "Show file name on title
set backspace=indent,eol,start "Fix backspace key
set encoding=UTF-8
if !has('nvim')
    " Better cryption
    set cryptmethod=blowfish
endif
" }}}

" System Clipboard Support: ----------------------  {{{
set pastetoggle=<F2>
set clipboard=unnamedplus
" }}}

" Status Line:----------------------  {{{
" Thanks https://gist.github.com/ericbn/f2956cd9ec7d6bff8940c2087247b132----
set laststatus=2
set statusline=
set statusline+=%(%{&buflisted?bufnr('%'):''}\ \ %)
set statusline+=%< " Truncate line here
set statusline+=%f\  " File path, as typed or relative to current directory
set statusline+=%{&modified?'+\ ':''}
set statusline+=%{&readonly?'\ ':''}
set statusline+=%1*\  " Set highlight group to User1
set statusline+=%= " Separation point between left and right aligned items
set statusline+=\ %{&filetype!=#''?&filetype:'none'}
set statusline+=%(\ %{(&bomb\|\|&fileencoding!~#'^$\\\|utf-8'?'\ '.&fileencoding.(&bomb?'-bom':''):'')
  \.(&fileformat!=#(has('win32')?'dos':'unix')?'\ '.&fileformat:'')}%)
set statusline+=%(\ \ %{&modifiable?(&expandtab?'et\ ':'noet\ ').&shiftwidth:''}%)
set statusline+=\ %* " Restore normal highlight
set statusline+=\ %{&number?'':printf('%2d,',line('.'))} " Line number
set statusline+=%-2v " Virtual column number
set statusline+=\ %2p%% " Percentage through file in lines as in |CTRL-G|
" Coloring
hi StatusLine cterm=reverse ctermfg=14 ctermbg=0
hi StatusLineNC cterm=reverse ctermfg=11 ctermbg=0
hi User1 ctermfg=14 ctermbg=0
" }}}

" Line Numbers: ----------------------  {{{
set number
set relativenumber
"set tw=79
set nowrap
set fo -=t
set colorcolumn=80
highlight ColorColumn ctermbg=1
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
"}}}

" Fuzzy Search: ----------------------  {{{
set path+=**
set wildmenu
" }}}

" Tabs: ----------------------  {{{
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
" }}}

" Search: ----------------------  {{{
set hlsearch
set incsearch
set ignorecase
set smartcase
" }}}

"Split: ----------------------  {{{
set fillchars=vert:│
hi! VertSplit ctermfg=0 ctermbg=9
" }}}

" Highlight WhiteSpaces: ----------------------  {{{
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
" }}}

" Split: ----------------------  {{{
set splitright
set splitbelow
" }}}

" History and Undo: ----------------------  {{{
set history=1000
set undolevels=1000
set undofile
set undodir=/tmp
" }}}

" Latex Preview:

function Is_beamer()
    if search("documentclass{beamer}")
        return 1
    endif
    return 0
endfunction

function Compile_pdf(should_stop_at_error)
    write
    normal mi
    if a:should_stop_at_error
        execute "silent !pdflatex -interaction=nonstopmode %"
    else
        execute "silent !pdflatex %"
    endif

    let l:is_beamer = Is_beamer()
    if l:is_beamer | let l:pdf_viewer = "mupdf" | else | let l:pdf_viewer = "zathura" | endif
    let l:is_open = system("ps ax | grep \" " . l:pdf_viewer . " " . expand('%:r') . "\" | grep -vc grep")

    if l:is_open
        if l:is_beamer
            execute "silent !pkill -HUP mupdf"
        endif
    else
        execute "silent ! " . l:pdf_viewer . " " . expand("%:r") . ".pdf &"
    endif
    redraw!
    normal `i
endfunction

function Toggle_autocompile(is_auto_compiling_enabled)
    let l:is_enabled = a:is_auto_compiling_enabled
    if l:is_enabled
        autocmd! auto_compile
        let l:is_enabled=0
    else
        augroup compiling_when_save
            autocmd!
            autocmd BufWritePost *.tex :call Compile_pdf(1)
        augroup end
        let l:is_enabled=1
    endif
    return l:is_enabled
endfunction
