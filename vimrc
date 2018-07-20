
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

" Airline
let g:airline#extensions#tabline#enabled = 1


" Set spell check active in current window
nnoremap <C-n>u :setlocal spell! spelllang=en_us<cr>
nnoremap <C-n>d :setlocal spell! spelllang=de_de<cr>

" Toggle Nerd Tree view
nnoremap <C-e> :NERDTreeToggle<CR>

" Show Buffer Explorer
nnoremap <C-a> :BufExplorer<CR>

" Split screen vertically and horizontally
nnoremap <C-s> :vsp<cr>
nnoremap <S-s> :sp<cr>

" Movement through splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" git control
nnoremap <C-g>s :Gstatus<cr>
nnoremap <C-g>c :Gcommit<cr>
nnoremap <C-g>d :Gdiff<cr>

" Enable clang-format
let clangBase=$CLANG_BASE_PATH . '/share/clang/clang-format.py'
nnoremap <Space>c :execute ':py3f '. clangBase <cr>
" FIXME what could be a good mapping in insert mode?
" imap <Space>c :execute ':pyf ' . clangBase <cr>

" Run YAPF on the whole buffer.
nnoremap <Space>p :call yapf#YAPF()<cr>
