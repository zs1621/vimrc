set laststatus=2
set statusline=%F:\ %l
"for the python pep8 tab = 4spaces"
set autoindent
set smartindent
set smarttab
set expandtab
set tabstop=4 "tab = 4 spaces"
set shiftwidth=4
set softtabstop=4

set hidden "in order to switch between buffers with unsaved change
map <s-tab> :bp<cr>
map <tab> :bn<cr>
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
set foldmethod=syntax "代码折叠"
set mouse=v
set clipboard=unnamedplus
"映射复制"
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
Bundle 'mattn/zencoding-vim'

set tags=./tags,tags
set autochdir
map <F8> :Tlist<cr>

"paste modle"
set pastetoggle=<F9>
