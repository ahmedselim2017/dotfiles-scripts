" ███╗   ███╗ █████╗ ██████╗ ██████╗ ██╗███╗   ██╗ ██████╗ ███████╗  ██╗   ██╗██╗███╗   ███╗
" ████╗ ████║██╔══██╗██╔══██╗██╔══██╗██║████╗  ██║██╔════╝ ██╔════╝  ██║   ██║██║████╗ ████║
" ██╔████╔██║███████║██████╔╝██████╔╝██║██╔██╗ ██║██║  ███╗███████╗  ██║   ██║██║██╔████╔██║
" ██║╚██╔╝██║██╔══██║██╔═══╝ ██╔═══╝ ██║██║╚██╗██║██║   ██║╚════██║  ╚██╗ ██╔╝██║██║╚██╔╝██║
" ██║ ╚═╝ ██║██║  ██║██║     ██║     ██║██║ ╚████║╚██████╔╝███████║██╗╚████╔╝ ██║██║ ╚═╝ ██║
" ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝     ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝╚═╝ ╚═══╝  ╚═╝╚═╝     ╚═╝

" General settings {{{
nnoremap <Esc> :noh<Cr>
inoremap <Esc> <Esc>:noh<Cr>
cabbrev W w !sudo tee %
inoremap jk <Esc>
command Q quitall!
"}}}

" Remap Leader Key: ----------------------  {{{
let mapleader="ö"
let maplocalleader="ç"
" }}}

" Moving Between Tabs: ----------------------  {{{
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
" }}}

" Moving Between Splits: ----------------------  {{{
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" }}}

" Indenting: ----------------------  {{{
vnoremap < <gv
vnoremap > >gv
" }}}

" Commenting: ----------------------  {{{
augroup comment
    autocmd!
    autocmd FileType python,sh,zsh,bash nnoremap <buffer> <LocalLeader>c mqI# <Esc>'q
    autocmd FileType tex nnoremap  <buffer> <LocalLeader>c mqI% <Esc>$'q
    autocmd FileType vim nnoremap <buffer> <LocalLeader>c mqI" <Esc>'q
augroup END
" }}}

" Folding ----------------------  {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" Delete Without Yank: ----------------------  {{{
nnoremap <Leader>d "_d
nnoremap <Leader>D "_D
nnoremap <Leader>x "_x
nnoremap <Leader>X "_X
" }}}

" Autoclose: ----------------------  {{{
inoremap <Leader>( ()<Esc>ha
inoremap <Leader>{ {}<Esc>ha
inoremap <Leader>[ []<Esc>ha
inoremap <Leader>" ""<Esc>ha
inoremap <Leader>' ''<Esc>ha
inoremap <Leader>` ``<Esc>ha
inoremap <Leader>< <><Esc>ha
inoremap <Leader>$ $$<Esc>ha
" }}}

" Change ----------------------  {{{
"
" Change Next: ----------------------  {{{
onoremap in( :<C-U>normal! f(vi(<CR>
onoremap in{ :<C-U>normal! f{vi{<CR>
onoremap in[ :<C-U>normal! f[vi[<CR>
onoremap in" :<C-U>normal! f"vi"<CR>
onoremap in' :<C-U>normal! f'vi'<CR>
onoremap in` :<C-U>normal! f`vi`<CR>
onoremap in< :<C-U>normal! f<vi<<CR>
" }}}
"
" Change Last: ----------------------  {{{
onoremap il( :<C-U>normal! F(vi(<CR>
onoremap il{ :<C-U>normal! F{vi{<CR>
onoremap il[ :<C-U>normal! F[vi[<CR>
onoremap il" :<C-U>normal! F"vi"<CR>
onoremap il' :<C-U>normal! F'vi'<CR>
onoremap il` :<C-U>normal! F`vi`<CR>
onoremap il< :<C-U>normal! F<vi<<CR>
" }}}
"
"}}}

" Remap Arrow Keys: ----------------------  {{{
" Disable Arrow Keys:
nnoremap <Right> :echo "No right for you!"<CR>
vnoremap <Right> :<C-u>echo "No right for you!"<CR>
inoremap<Right> <C-o>:echo "No right for you!"<CR>
"
nnoremap <Left> :echo "No left for you!"<CR>
vnoremap <Left> :<C-u>echo "No left for you!"<CR>
inoremap <Left> <C-o>:echo "No left for you!"<CR>
"
nnoremap <Up> :echo "No up for you!"<CR>
vnoremap <Up> :<C-u>echo "No up for you!"<CR>
inoremap <Up> <C-o>:echo "No up for you!"<CR>
"
nnoremap <Down> :echo "No down for you!"<CR>
vnoremap <Down> :<C-u>echo "No down  for you!"<CR>
inoremap <Down> <C-o>:echo "No down for you!"<CR>
"
" Add New Keys Instead Of Arrow Keys:
inoremap <c-l> <Right>
inoremap <c-h> <Left>
inoremap <c-k> <Up>
inoremap <c-j> <Down>
" }}}

" Place Holders: ----------------------  {{{
nnoremap <Space><Space> 0/<++><CR>:noh<Esc>cf>
nnoremap <Tab><Tab> 0?<++><CR>:nohcf>
inoremap <Leader><Space><Space> <Esc>0/<++><CR>:noh<CR>cf>
inoremap <Leader><Tab><Tab> <Esc>0?<++><CR>:noh<CR>cf>
"
nnoremap <Leader>+ i<++>
inoremap <Leader>+ <++>
" }}}

" Adding New Line: ----------------------  {{{
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>
" }}}

if has('nvim')

    "Terminal: ----------------------  {{{
    "Escaping:
    tnoremap jk <C-\><C-n>
    "
    " Navigate Between Terminal And Window: ----------------------  {{{
    tnoremap <C-h> <C-\><C-n><C-w>h
    tnoremap <C-j> <C-\><C-n><C-w>j
    tnoremap <C-k> <C-\><C-n><C-w>k
    tnoremap <C-l> <C-\><C-n><C-w>l
    "}}}
    "
    "Toggle Terminal: ----------------------  {{{
    nnoremap <Leader><space> :vertical botright Ttoggle<cr><C-w>l
    nnoremap <Leader>t :vertical rightbelow Ttoggle<CR><C-w>l
    nnoremap <Leader>T :botright Ttoggle<CR><C-w>jA
    " }}}
    "
    " }}}

endif



