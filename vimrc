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

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
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
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<CR>

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
highlight ColorColumn ctermbg=0 

" Useful things
set history=700
set undolevels=700

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


" Autoclose
inoremap <Leader>( ()
inoremap <Leader>{ {}
inoremap <Leader>[ []
inoremap <Leader>" ""
inoremap <Leader>' ''
inoremap <Leader>` ``


" Plugins
call plug#begin('~/.vim/plugged')

Plug 'klen/python-mode'
set completeopt=longest,menuone

Plug 'szymonmaszke/vimpyter'

call plug#end()

