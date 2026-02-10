set number
set relativenumber
set tabstop=4
set shiftwidth=4
set autoindent
set smarttab
set softtabstop=4
set mouse=a
set laststatus=2
set encoding=utf-8
colorscheme retrobox

" install vim-plug
" if error ensure curl is installed
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'

call plug#end()
