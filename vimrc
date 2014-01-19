" Add this line.
call pathogen#infect()
set number

" You probably already have these lines. Add them if not:
syntax on
filetype plugin indent on
set incsearch hlsearch 

"NERDTree setting group
"autocmd vimenter * NERDTree 
"let g:NERDTreeWinPos = "right"
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar


set nocompatible               " be iMproved
filetype off                   " required!

inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
nnoremap <CR> :noh<CR>

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
 Bundle 'ervandew/supertab'
 Bundle 'mihaifm/vimpanel'
 Bundle 'altercation/vim-colors-solarized'

 "
 " original repos on github
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 Bundle 'tpope/vim-rails.git'
 " vim-scripts repos
 Bundle 'L9'
 Bundle 'FuzzyFinder'
 
 " non github repos
 " Bundle 'git://git.wincent.com/command-t.git'
 " git repos on your local machine (ie. when working on your own plugin)
 " Bundle 'file:///Users/gmarik/path/to/plugin'
 " ...

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
color solarized
" set guifont=Monaco:h12

autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>" " displays <% %> correctly
:set cpoptions+=$ " puts a $ marker for the end of words/lines in cw/c$ commands 

let g:EasyMotion_leader_key = '<Leader>'

"Powerline configuration
set encoding=utf-8
set laststatus=2
set guifont=Consolas\ for\ Powerline\ FixedD:h10:cANSI
set t_Co=256
let g:Powerline_symbols = "fancy"
"anti menu garbled
"if syntastic/fugitive statusline flag don't work!
" :PowerlineClearCache and restart vim

autocmd FileType php set omnifunc=phpcomplete#CompletePHP

set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Move .swp file to fixed directory"
set directory=~/vimfiles/swp//
set backupdir=~/vimfiles/backup//

" Autosave when not focus on VIM"
:au FocusLost * silent! wa

" Vimpanel setting group
" ===== Vimpanel usage command =====
" VimpanelCreate {Name} //To create panel
" VimpanelLoad   {Name} //To load panel
" VimpanelEdit   {Name} //To edit panel directory list
"
noremap v :VimpanelLoad<Space>mypanel<CR>
