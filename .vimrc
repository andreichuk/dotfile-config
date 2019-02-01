call plug#begin('~/.vim/plugged')

" colorschemes
Plug 'treycucco/vim-monotonic'
Plug 'andreypopp/vim-colors-plain'
Plug 'KKPMW/oldbook-vim'

call plug#end()

set number
set mouse-=a " disables vim automatic visual mode on mouse select

syntax on

" colorscheme plain
colorscheme monotonic
" colorscheme oldbook

" set termguicolors
