" 显示行号
set number
" 显示标尺
set ruler
" 选项在特定行显示标尺
"set colorcolumn=80
" 历史纪录
set history=1000
" 输入的命令显示出来，看的清楚些
set showcmd
" 状态行显示的内容
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [POS=%l,%v][%p%%]\ [LEN=%L]\ %{strftime(\"%y/%m/%d\ -\ %H:%M\")}
" 启动显示状态行 1，总是显示状态行 2
set laststatus=2
" 语法高亮显示
syntax on
set fileencodings=utf-8,gb2312,gbk,cp936,latin-1
set fileencoding=utf-8
set termencoding=utf-8
set fileformat=unix
set encoding=utf-8
" 配色方案
colorscheme desert
" 指定配色方案是 256 色
set t_Co=256

set wildmenu

" 去掉有关 vi 一致性模式，避免以前版本的一些 bug 和局限，解决 backspace 不能使用的问题
set nocompatible
set backspace=indent,eol,start
set backspace=2

" 启用自动对齐功能，把上一行的对齐格式应用到下一行
set autoindent

" 依据上面的格式，智能的选择对齐方式，对于类似 C 语言编写很有用处
set smartindent

" vim 禁用自动备份
set nobackup
set nowritebackup
set noswapfile

" 用空格代替 tab
set expandtab

" 设置显示制表符的空格字符个数,改进 tab 缩进值，默认为 8，现改为 2
set tabstop=2

" 统一缩进为 2，方便在开启了 et 后使用退格(backspace)键，每次退格将删除 X 个空格
set softtabstop=2

" 设定自动缩进为 2 个字符，程序中自动缩进所使用的空白长度
set shiftwidth=2

" 设置帮助文件为中文(需要安装 vimcdoc 文档)
set helplang=cn

" 显示匹配的括号
set showmatch

" 文件缩进及 tab 个数
au FileType html,python,vim,javascript setl shiftwidth=2
au FileType html,python,vim,javascript setl tabstop=2
au FileType java,php setl shiftwidth=2
au FileType java,php setl tabstop=2

" 高亮搜索的字符串
set hlsearch

" 检测文件的类型
filetype on
filetype plugin on
filetype indent on

" C风格缩进
set cindent
set completeopt=longest,menu

" 功能设置

" 去掉输入错误提示声音
set noeb
" 自动保存
set autowrite
" 突出显示当前行
set cursorline
" 突出显示当前列
"set cursorcolumn
" 共享剪贴板
set clipboard+=unnamed
" 文件被改动时自动载入
set autoread
" 顶部底部保持 2 行距离
set scrolloff=2
" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif
