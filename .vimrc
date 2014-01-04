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
"vim 多行註釋
Bundle 'tpope/vim-commentary'
"縮進對齊線
Bundle 'Yggdroot/indentLine'



set tags=./tags,tags
set autochdir

"打開文件夾"
map <F7> :Tlist<cr>

"paste modle"
set pastetoggle=<F9>

"zencode key"
let g:user_zen_expandabbr_key = '<Tab>'


"瀏覽器預覽"
map <F8> :!/opt/google/chrome/chrome %<cr>


"缩进对齐线"
map <F6> :IndentLinesToggle<CR>


"Python 注释
function InsertPythonComment()
    exe 'normal'.1.'G'
    let line = getline('.')
    if line =~ '^#!.*$' || line =~ '^#.*coding:.*$'
        return
    endif
    normal O
    call setline('.', '#!/usr/bin/env python')
    normal o
    call setline('.', '# -*- coding:utf-8 -*-')
    normal o
    call setline('.', '#')
    normal o
    call setline('.', '#   Author  :   '.g:python_author)
    normal o
    call setline('.', '#   E-mail  :   '.g:python_email)
    normal o
    call setline('.', '#   Date    :   '.strftime("%y/%m/%d %H:%M:%S"))
    normal o
    call setline('.', '#   Desc    :   ')
    normal o
    call setline('.', '#')
    normal o
    call cursor(7, 17)
endfunction
function InsertCommentWhenOpen()
    if a:lastline == 1 && !getline('.')
        call InsertPythonComment()
    end
endfunc
au FileType python :%call InsertCommentWhenOpen()
au FileType python map <F3> :call InsertPythonComment()<cr>

let g:python_author = 'Rhapsodyzs' 
let g:python_email = 'zs1213yh@gmail.com'
