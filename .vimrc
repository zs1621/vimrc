set laststatus=2
set statusline=%F:\ %l
set autoindent
set smartindent
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set hidden "in order to switch between buffers with unsaved change
map <s-tab> :bp<cr>
"map <tab> :bn<cr>
map <F2> :NERDTreeToggle <cr>
map <F12> :!python %
map <F10> :!node %
set number
set ai
set bs=2
set showmatch
set autoread 
set hls "检索时高亮显示匹配项"
set helplang=cn "帮助文档设置为中文"
set foldmethod=indent "代码折叠"
set mouse=v
set clipboard=unnamedplus
vmap <C-c> "+y
syntax on
"call pathogen#infect()
filetype plugin indent on
filetype plugin on

let Tlist_Ctags_Cmd='/usr/local/bin/ctags'

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python set omnifunc=pythoncomplete#Complete

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle"
" required!
Bundle 'gmarik/vundle'
Bundle 'jonathanfilip/vim-lucius.git'
Bundle 'scrooloose/nerdtree.git'
Bundle 'mattn/emmet-vim.git'
Bundle 'maksimr/vim-jsbeautify'
Bundle 'einars/js-beautify'



set tags=./tags,tags
set autochdir
map <F8> :Tlist<cr>

"paste modle"
set pastetoggle=<F9>

"zencode key"
let g:user_zen_expandabbr_key = '<Tab>'
