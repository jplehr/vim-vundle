
" We want to have a more powerful status line
let hostname=system('hostname -s')
set statusline=
set statusline+=%F%h%m%r%w
set statusline+=%=%{hostname}
set laststatus=2

set nocompatible
filetype off

" Set runtime path and call vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Have Vundle manage itself
Plugin 'VundleVim/Vundle.vim'

"Plugin 'scrooloose/nerdtree'

"Plugin 'jlanzarotta/bufexplorer'

"Plugin 'flazz/vim-colorschemes'

call vundle#end()
filetype plugin indent on

syntax enable

set nu
set rnu
set ai
set ruler
set tabstop=2
set shiftwidth=2

set fdm=syntax

colorscheme itg_flat


" Toggle Nerd Tree view
nmap <C-e> :NERDTreeToggle<CR>

nmap <C-a> :BufExplorer<CR>

let clangBase=$CLANG_BASE_PATH . '/share/clang/clang-format.py'
map <C-K> :execute ':pyf '. clangBase <cr>
imap <C-K> <c-o>:execute ':pyf ' . clangBase <cr>
