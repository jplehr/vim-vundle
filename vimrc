
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

Plugin 'google/yapf', { 'rtp': 'plugins/vim' }

call vundle#end()

filetype plugin indent on
autocmd FileType python setlocal expandtab shiftwidth=2 softtabstop=2

set nocompatible
set backspace=indent,eol,start

syntax enable

set nu
set rnu
set ai
set ruler
set tabstop=2
set shiftwidth=2
set softtabstop=2
set cursorline

set fdm=syntax

colorscheme itg_flat


" Set spell check active in current window
nmap <C-m> :setlocal spell! spelllang=en_us<cr>
nmap <S-m> :setlocal spell! spelllang=de_de<cr>

" Airline
let g:airline#extensions#tabline#enabled = 1

" Toggle Nerd Tree view
nmap <C-e> :NERDTreeToggle<CR>

" Show Buffer Explorer
nmap <C-a> :BufExplorer<CR>

" Split screen vertically and horizontally
nmap <C-s> :vsp<cr>
nmap <S-s> :sp<cr>


" Movement through splits
" TODO find a way to get Alt to work here? So i have the same movement as in
" Opera.
execute "set <M-j>=\ej"
nnoremap <M-j> j



" Enable clang-format
let clangBase=$CLANG_BASE_PATH . '/share/clang/clang-format.py'
map <C-k> :execute ':py3f '. clangBase <cr>
imap <C-k> <c-o>:execute ':py3f ' . clangBase <cr>

" Run YAPF on the whole buffer.
map <C-p> :call yapf#YAPF()<cr>
