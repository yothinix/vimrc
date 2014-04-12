" Add this line.
set number

" You probably already have these lines. Add them if not: syntax on
filetype plugin indent on
set incsearch hlsearch 

set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar

set nocompatible               " be iMproved
filetype off                   " required!

" noremap <Up> <NOP>
" noremap <Down> <NOP>
" noremap <Left> <NOP>
" noremap <Right> <NOP>
" noremap <CR> :noh<CR>

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 Bundle 'kien/ctrlp.vim'
 Bundle 'vim-easymotion'
 Bundle 'gmarik/ingretu'
 Bundle 'bogado/file-line'
 Bundle 'yearofmoo/Vim-Darkmate'
 Bundle 'Raimondi/delimitMate'
 Bundle 'chriskempson/vim-tomorrow-theme'
 Bundle 'ervandew/supertab'
 Bundle 'mihaifm/vimpanel'
 Bundle 'altercation/vim-colors-solarized'
 Bundle 'Lokaltog/vim-powerline'
 Bundle 'tpope/vim-vividchalk'
 Bundle 'jelera/vim-javascript-syntax'
 Bundle 'takac/vim-hardtime'
 Bundle 'junegunn/seoul256.vim'
 Bundle '29decibel/codeschool-vim-theme'
 Bundle 'vim-scripts/Wombat'
 Bundle 'modess/vim-phpcolors'
 Bundle 'scrooloose/nerdcommenter'
 Bundle 'tomasr/molokai'
 Bundle 'vim-scripts/repmo.vim'
 Bundle 'nanotech/jellybeans.vim'

 "
 " original repos on github
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 Bundle 'tpope/vim-rails.git'
 " vim-scripts repos
 Bundle 'L9'
 Bundle 'FuzzyFinder'
 
 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) or foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
 "
 " Easy motion setting
let mapleader = " " 
let g:ctrlp_map = '<c-p>'

" color codeschool
" color candystripe
" color solarized
color molokai
set background=dark
" color jellybeans
" color vividchalk
" color Tomorrow-Night 
" color seoul256
" color wombat

autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>" " displays <% %> correctly
:set cpoptions+=$ " puts a $ marker for the end of words/lines in cw/c$ commands 

let g:EasyMotion_leader_key = '<Leader>'

"Powerline configuration
set encoding=utf-8
set laststatus=2
set guifont=Monaco\ for\ Powerline
set t_Co=256
let g:Powerline_symbols = "fancy"
"anti menu garbled
"if syntastic/fugitive statusline flag don't work!
" :PowerlineClearCache and restart vim
"
"for font-patching use this tutorial on Linux
"https://powerline.readthedocs.org/en/latest/fontpatching.html
"
" 1)apt-get install python-fontforge
" 2)add Bundle 'Lokaltog/vim-powerline'
" 3)Download Monaco.ttf from http://www.fontyukle.net/en/Monaco.ttf
" 4)use fontpatcher in Bundle directory to patch the Monaco font
" 5)cp patched font into ~/.fonts
" 6)fc-cache -vf ~/.fonts

autocmd FileType php set omnifunc=phpcomplete#CompletePHP

set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Move .swp file to fixed directory"
set directory=~/vimfiles/swp//
set backupdir=~/vimfiles/backup//

" Autosave when not focus on VIM"
au FocusLost * silent! wa

" Vimpanel setting group
" ===== Vimpanel usage command =====
" VimpanelCreate {Name} //To create panel
" VimpanelLoad   {Name} //To load panel
" VimpanelEdit   {Name} //To edit panel directory list
"
noremap v :VimpanelLoad<Space>mypanel<CR>
au FileType javascript call JavaScriptFold()

if &diff
    colorscheme jellybeans
endif
