colorscheme meta5
syntax enable

set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

set number
set showcmd
set cursorline
set wildmenu
set lazyredraw
set showmatch

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'itchyny/lightline.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'dag/vim2hs'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'Raimondi/delimitMate'
Plugin 'Yggdroot/indentLine'
Plugin 'Sirver/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'

call vundle#end()
filetype plugin indent on

let g:lightline = {
            \ 'colorscheme': 'wombat',
            \ 'component': {
            \ 'readonly': '%{&readonly?"\ue0a2":""}',
            \ }
            \ }

let g:ycm_key_list_select_completion    = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion  = ['<C-k',  '<C-p>', '<Up>']

nmap <leader>d :NERDTreeToggle<CR>

let delimitMate_expand_cr = 1

let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

let g:SuperTabDefaultCompletionType = '<C-n>'
let g:SuperTabCrMapping = 0

set laststatus=2
