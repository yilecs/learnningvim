set number
set nocompatible
set hidden
set nocp

syntax on
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" nerdtree
Plugin 'preservim/nerdtree'

" vim-vinegar
Plugin 'tpope/vim-vinegar'

" fzf
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() }}
Plugin 'junegunn/fzf.vim'

call vundle#end()
filetype plugin indent on

" map<learder> to ,
let mapleader = ","

"setting for fzf
" bind map
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <Leader>f :Rg<CR>
nnoremap <silent> <Leader>/ :BLines<CR>
nnoremap <silent> <Leader>' :Marks<CR>
nnoremap <silent> <Leader>g :Commits<CR>
nnoremap <silent> <Leader>H :Helptags<CR>
nnoremap <silent> <Leader>hh :History<CR>
nnoremap <silent> <Leader>h: :History:<CR>
nnoremap <silent> <Leader>h/ :History/<CR>

" replacing grep with Rg
set grepprg=rg\ --vimgrep\ --smart-case\ --follow
