colorscheme torte
syntax on

set clipboard=unnamed
set belloff=all
set nu rnu

map <space> <leader>

nmap j gj
nmap k gk

nnoremap <leader>d "_d
vnoremap <leader>d "_d
nnoremap <leader>c "_c
vnoremap <leader>c "_c
nnoremap <leader>x "_x
vnoremap <leader>x "_x

nnoremap K gh
nnoremap , v~<esc>
nnoremap <leader>t T
nnoremap <leader>f F
nnoremap Y y$
nnoremap \ <leader><leader>s

nnoremap <expr> M (line('$')/2).'G'
xnoremap <expr> M (line('$')/2).'G'
onoremap <expr> M (line('$')/2).'G'

nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
