"set nocompatible

filetype off

set number

syntax on

set cindent

set expandtab

set tabstop=4

set shiftwidth=4

set softtabstop=4

set showmatch

set incsearch

set langmenu=zh_CN.utf8

set helplang=cn

set backspace=indent,eol,start

set foldenable

set foldmethod=indent

set foldlevelstart=99

setlocal foldlevel=1

set bg=dark

set sessionoptions+=resize

set autochdir

set tags=./tags

set tags+=~/local/include/tags

set path+=~/local/include

set fileencoding=utf-8

set fileencodings=utf-8,cp936,big5,gb2312,gbk,latin1

set hlsearch

set ambiwidth=double

set laststatus=2

let mapleader=","

colorscheme molokai

highlight Search term=reverse ctermfg=Black ctermbg=226 gui=bold guifg=Black guibg=Yellow

"hi default ShowMarksHLl ctermfg=darkblue ctermbg=blue cterm=bold guifg=blue guibg=lightblue gui=bold
"hi default ShowMarksHLu ctermfg=darkblue ctermbg=blue cterm=bold guifg=blue guibg=lightblue gui=bold
"hi default ShowMarksHLo ctermfg=darkblue ctermbg=blue cterm=bold guifg=blue guibg=lightblue gui=bold
"hi default ShowMarksHLm ctermfg=darkblue ctermbg=blue cterm=bold guifg=blue guibg=lightblue gui=bold

hi ShowMarksHLl ctermbg=Yellow   ctermfg=Black  guibg=#FFDB72    guifg=Black
hi ShowMarksHLu ctermbg=Magenta  ctermfg=Black  guibg=#FFB3FF    guifg=Black

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

Bundle 'The-NERD-tree'

Bundle 'The-NERD-Commenter'

Bundle 'AutoComplPop'

Bundle 'taglist-plus'

Bundle 'snipMate'

Bundle 'winmanager'

Bundle 'a.vim'

Bundle 'c.vim'

Bundle 'DoxygenToolkit.vim'

"Bundle 'corntrace/bufexplorer'

Bundle 'Mark'

Bundle 'Lokaltog/vim-powerline'

Bundle 'YankRing.vim'

Bundle 'ShowMarks'

Bundle 'rizzatti/funcoo.vim'

Bundle 'rizzatti/dash.vim'

"Bundle 'minibufexpl.vim'

"Bundle 'snipmate-snippets'

filetype plugin indent on

let Tlist_Ctags_Cmd="/usr/bin/ctags"

let Tlist_Show_One_File=1

let TList_Exit_OnlyWindow=1

let TList_File_Flod_Auto_Close=1

let TList_Show_Menu=1



"NERDTree 设置选项
let g:NERDTree_title='[NERD Tree]'
let NERDTreeCNERDChristmasTree=1
let NERDTreeAutoCenter=1
let NERDTreeMouseMode=2
let NERDTreeWinSize=30
let NERDTreeShowLineNumbers=1
let NERDTreeIgnore=['\.o$','\.d$']
"Winmanger设置选项
let g:winManagerWindowLayout='NERDTree|TagList'

let g:winManagerWidth=30

" ShowMarks配置
 let showmarks_enable = 1
 " Show which marks
 let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
 " Ignore help, quickfix, non-modifiable buffers
 let showmarks_ignore_type = "hqm"
 " Hilight lower & upper marks
 let showmarks_hlline_lower = 1
 let showmarks_hlline_upper = 1 


"DoxygenToolkit配置
let g:DoxygenToolkit_authorName="binfang@ucweb.com"
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1

nmap <F3> :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR><CR>
nmap <leader>do :Dox <CR><CR>
nmap <leader>da :DoxAuthor 
nmap <F1> :tabn <CR><CR>
nmap <F2> :tabp <CR><CR>
nmap <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q . <CR><CR>

"函数
function! NERDTree_Start()
	exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
	return 1
endfunction

"powerline
let g:Powerline_sysmbols = 'fancy'

