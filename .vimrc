syntax on
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
set complete+=kspell
set completeopt=menuone,longest
set shortmess+=c
set smartindent
set expandtab

" show/hide 80 character limit for readability
nnoremap <Leader>cc :set colorcolumn=80<cr>
nnoremap <Leader>ncc :set colorcolumn-=80<cr>

" open current file in browser (for html)
nnoremap <Leader>p :!sensible-browser %<cr>

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
Plug 'morhetz/gruvbox'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'shime/vim-livedown'

" automatically show vim's complete menu
Plug 'vim-scripts/AutoComplPop'

call plug#end()

colorscheme retrobox
