set nocompatible               " be improved, required
filetype off                   " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()            " required
Plugin 'VundleVim/Vundle.vim'  " required

" ===================
" my plugins here
" ===================

Plugin 'itchyny/lightline.vim'
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-surround'
Plugin 'morhetz/gruvbox'
Plugin 'airblade/vim-gitgutter'

" ===================
" end of plugins
" ===================
call vundle#end()               " required

" filetype plugin indent on       " required
filetype indent plugin off

set background=dark
colorscheme gruvbox

set number

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'


