" source ~/.vimrc-functions

" Auto save when focus gone
":au FocusLost * :wa

" Custom file type configuration
autocmd BufNewFile,BufRead *.yml set ft=ansible

" PLUGINS CONFIGURATION 

" Buffergator
" Display the list with buffers on the right side
let g:buffergator_viewport_split_policy = "R"
let g:buffergator_autodismiss_on_select = 0
let g:buffergator_autoupdate = 1
let g:buffergator_sort_regime = "mru"
let g:buffergator_show_full_directory_path = 0

" NERDTree conf
let g:nerdtree_tabs_open_on_gui_startup = 0
let g:NERDTreeChDirMode=2

" ctrlp conf
let g:ctrlp_working_path_mode='a'
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
let g:ctrlp_show_hidden = 1
let g:ctrlp_dotfiles = 1
let g:ctrlp_by_filename = 1

" Ag conf
let g:ag_highlight=1

" Markdown conf
let g:vim_markdown_folding_disabled = 1
" END OF PLUGIN CONFIGURATION

set clipboard=unnamedplus
set cursorline

" Disalbe scrollbars. Enabled scrollbars makes resizing/maximizing gvim window very slow.
:setglobal guioptions-=L
:setglobal guioptions-=l
:setglobal guioptions-=R
:setglobal guioptions-=r
:setglobal guioptions-=b
:setglobal guioptions-=h
 
set hidden
set guioptions-=m
set guioptions-=T
set guitablabel=%t
filetype off
set nocompatible
set fileencoding=utf8 " encoding for saved file
set encoding=utf-8 " encoding when typing
set number " line numbers
set incsearch
"set hlsearch
set nohls
set history=20
set ruler
set showcmd
set showmode
set ignorecase
set laststatus=2
set statusline=[%n]\ %t%r%m%=%l,%c\ %p%%\ [%F]
set cindent
set guifont=Monospace\ 10
"set guifont=Noto\ Mono\ 11
set expandtab
set tabstop=2 " number of spaces for tab key
set shiftwidth=2 " number of spaces for indentation
set listchars=tab:▸\ ,eol:¬
syntax enable

"Key bindings
map <C-h> :bp<cr>
map <C-l> :bn<cr>
map <F2> :w<cr>
map <F3> :NERDTreeToggle<cr>
map	<F4> :NERDTreeFind<cr>
map <F10> :bp<cr>:bd #<cr>
map <S-F10> :q<cr>
map <C-n> :silent !gvim<cr>
map <C-Insert> "+y
map <S-Insert> "+p
map <C-t> :CommandT<cr>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'derekwyatt/vim-scala'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'chase/vim-ansible-yaml'
Plugin 'kien/ctrlp.vim'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'rking/ag.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'Peeja/vim-cdo'
Plugin 'karlbright/qfdo.vim'
Plugin 'xolox/vim-misc'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-surround'
Plugin 'tfnico/vim-gradle'
Plugin 'evanmiller/nginx-vim-syntax'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'sukima/xmledit'
call vundle#end()
execute pathogen#infect()
filetype plugin indent on

"set background=light
"call SetColorScheme()
"let g:lucius_style = "dark"
"let g:lucius_contrast = "high"
"let g:lucius_contrast_bg = "high"
" colorscheme lucius
"call SetTabSize(4)

function! SetTabSize(size)
  let &tabstop=a:size
  let &shiftwidth=a:size
endfunction
