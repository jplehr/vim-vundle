
" We want to have a more powerful status line
"let hostname=system('hostname -s')
"set statusline=
"set statusline+=%F%h%m%r%w
"set statusline+=%=%{hostname}
"set laststatus=2

set nocompatible
filetype off

" Set runtime path and call vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Have Vundle manage itself
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'jlanzarotta/bufexplorer'

Plugin 'flazz/vim-colorschemes'

Plugin 'Valloric/YouCompleteMe'

Plugin 'vim-airline/vim-airline'

Plugin 'edkolev/tmuxline.vim'

Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on

set nocompatible
set backspace=indent,eol,start

syntax enable

set nu
set rnu
set ai
set ruler
set tabstop=2
set shiftwidth=2
set cursorline

set fdm=syntax

colorscheme itg_flat

" Set spell check active
nmap <C-j> :set spell spelllang=en_us<CR>

" Airline
let g:airline#extensions#tabline#enabled = 1

" Toggle Nerd Tree view
nmap <C-e> :NERDTreeToggle<CR>

nmap <C-a> :BufExplorer<CR>

let clangBase=$CLANG_BASE_PATH . '/share/clang/clang-format.py'
map <C-K> :execute ':pyf '. clangBase <cr>
imap <C-K> <c-o>:execute ':pyf ' . clangBase <cr>
