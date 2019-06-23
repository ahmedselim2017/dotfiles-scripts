" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Vim will load $VIMRUNTIME/defaults.vim if the user does not have a vimrc.
" This happens after /etc/vim/vimrc(.local) are loaded, so it will override
" any settings in these files.
" If you don't want that to happen, uncomment the below line to prevent
" defaults.vim from being loaded.
" let g:skip_defaults_vim = 1

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
" set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif



" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
set mouse=n		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

"==============
" Custom Cofig
"==============

" System Clipboard support
set pastetoggle=<F2>
set clipboard=unnamedplus

" Remap <Leader> key
let mapleader=","

" Easier moving between tabs
noremap <Leader>1 1gt
noremap <Leader>2 2gt
noremap <Leader>3 3gt
noremap <Leader>4 4gt
noremap <Leader>5 5gt
noremap <Leader>6 6gt
noremap <Leader>7 7gt
noremap <Leader>8 8gt
noremap <Leader>9 9gt
noremap <Leader>0 :tablast<CR>
noremap <Leader>t :tabnew<CR>
noremap <Leader>c :tabclose<CR>

" Easily moving between split windows
map <c-j> <c-w>j
map <c-k> <c-k>k
map <c-h> <c-w>h
map <c-l> <c-w>l


" Easily sorting code
vnoremap <Leader>s :sort<CR>

" Easier moving code
vnoremap < <gv
vnoremap > >gv


" Enable syntax highlighting
filetype off
filetype plugin indent on

" Enable line numbers and line lenght
set number         " show line numbers
set tw=79          " width of the document(used by gd)
set nowrap         " don't automatically wrap on lad
set fo -=t         " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=1

" Useful things
set history=700
set undolevels=700
noremap NN :noh<CR>

" Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Visial mode shortcuts
noremap vv ve

" Autoclose
inoremap ( ()<esc>ha
inoremap { {}<esc>ha
inoremap [ []<esc>ha
inoremap " ""<esc>ha
inoremap ' ''<esc>ha
inoremap ` ``<esc>ha


"Disable Arrow Keys
nnoremap <Right> :echo "No right for you!"<CR>
vnoremap <Right> :<C-u>echo "No right for you!"<CR>
inoremap <Right> <C-o>:echo "No right for you!"<CR>

nnoremap <Left> :echo "No left for you!"<CR>
vnoremap <Left> :<C-u>echo "No left for you!"<CR>
inoremap <Left> <C-o>:echo "No left for you!"<CR>

nnoremap <Up> :echo "No up for you!"<CR>
vnoremap <Up> :<C-u>echo "No up for you!"<CR>
inoremap <Up> <C-o>:echo "No up for you!"<CR>

nnoremap <Down> :echo "No down for you!"<CR>
vnoremap <Down> :<C-u>echo "No down  for you!"<CR>
inoremap <Down> <C-o>:echo "No down for you!"<CR>

" Saving as root
cabbrev W w !sudo tee %

"Save Latex
cabbrev wl :w<CR><esc>:!pdflatex %<CR><CR>

"Latex when autoclose a tag move cursor
imap }} ]]<esc>:sleep 100m<cr>k


"Add new line 
nmap O o<Esc>

"Easily go to normal mode
inoremap jj <esc>

"Json Format
map <Leader>j :%!python -m json.tool<CR>

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'klen/python-mode'
set completeopt=longest,menuone

Plug 'szymonmaszke/vimpyter'

Plug 'vim-airline/vim-airline'

Plug 'elzr/vim-json'

Plug 'lervag/vimtex'

call plug#end()
