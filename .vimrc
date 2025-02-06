" 设定编码
set encoding=utf-8 
" 代码高亮
syntax on 
" 高亮括号
set showmatch 
" 设定自动缩进
set autoindent
" 设定tab为4个空格
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
" 显示行号    
set number 
" 添加鼠标支持
" set mouse+=a 
" 修改visual block键位
nmap <C-K> <C-v> 

" ale设置
" 格式优化
let g:ale_fixers = {
\ 'python':['autopep8'],
\}

" 插件管理器
" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl --insecure -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" 设置插件
call plug#begin()
Plug 'neomake/neomake'
Plug 'dense-analysis/ale'
call plug#end()
