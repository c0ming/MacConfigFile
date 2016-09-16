set nocompatible
set number
filetype on
filetype plugin on
set history=1000
set background=dark
syntax on
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set showmatch
set vb t_vb=
set ruler
set nohls
set mouse=a
set cindent
set incsearch
set fileencodings=utf-8
set termencoding=utf-8
set encoding=prc
set nomore
"""EnhancedCommentify"""
map <F2> <Esc><Esc>:call EnhancedCommentify('yes','comment')<CR>
map <F3> <Esc><Esc>:call EnhancedCommentify('yes','decomment')<CR>
"""End""""""""""""""""""

"""taglist"""
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Auto_Open=1
"""End"""""""

"""Ctags"""
"set tags+=/usr/include/c++/4.4.5/tags,/home/coming/down/stl/tags
set tags+=/usr/include/c++/4.4.5/tags
set path+=~/develop/stl,/usr/include/c++/4.4.5/
"""End"""""

"""omnicpp"""
let OmniCpp_DefaultNamespaces=["std"]
let OmniCpp_NamespaceSearch=1
let OmniCpp_MayCompleteDot=1
let OmniCpp_MayCompleteArrow=1
let OmniCpp_MayCompleteScope=1
"let OmniCpp_ShowScopeInAbbr=1
let OmniCpp_ShowPrototypeInAbbr=1
let OmniCpp_SelectFirstItem=2
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
autocmd CursorMoved * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"""End"""
