" don't try to emulate vi's (unfriendly) behaviour
set nocompatible  

" Vundle
filetype off

if has('win32') || has('win64')
    set rtp+=~/vimfiles/bundle/vundle
else
    set rtp+=~/.vim/bundle/vundle
endif

call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'drmingdrmer/xptemplate'
Bundle 'mattn/zencoding-vim'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'

Bundle 'matchit.zip'
Bundle 'taglist.vim'
Bundle 'mru.vim'


filetype plugin indent on

" ===========================
" Appearance
" ===========================

" set font
try
    set gfn=Consolas:h10
catch
    set gfn=Dejavu:h10
endtry

" Detect 256 color terminals
if ($COLORTERM == 'gnome-terminal') || ($TERM == 'xterm-256color')
    set t_Co=256
endif

" Set colorscheme
colorscheme delek
if &t_Co == 256
    colorscheme sunburst
endif

" perform syntax highlighting (colours code by syntax)
syntax enable

" Set the background scheme to dark
"set background=dark

" when inserting a bracket, jump briefly to matching bracket
set showmatch

" show line numbers
set number

" enable mouse
set mouse=a

" ===========================
" Indentation and tabs
" ===========================

" allow backspace to delete over autoindent, end of line, and the
" start of the current insertion
set backspace=indent,eol,start

" set indentation to 4 spaces
set shiftwidth=4

" tab key goes in 4 spaces (but existing tabs are displayed 8 wide)
set softtabstop=4

" Set vim to detect filetypes; will run ~/.vim/ftplugin/<filetype>.vim
filetype on

" make sure that TABs work exactly as TABs in Makefiles 
autocmd FileType make setlocal noexpandtab
autocmd FileType make setlocal softtabstop=0

" set automatic indentation depending upon the detected file type
filetype indent on

" indentation options for C indenting.
"     :0  -- case labels are indented 0 spaces in from switch
"     (2  -- indent 2 spaces within unclosed parentheses
"     m1  -- line up close parentheses with start of opening line
"     b1  -- align break with its case label
"     t0  -- function return type declaration not indented
"     c1  -- indent text inbetween comments by 1
" there are _many_ more options; do ":help cinoptions-values" to see them
set cinoptions=:0,m1,b1,t0,c1

" for non-C files (such as assembly language), use autoindenting
set autoindent smartindent
set smarttab

" ===========================
" Status line
" ===========================

" Display incomplete commands
set showcmd

" always display the status line, even if there is only a single window
set laststatus=2

" customize the status line.  Do ":help statusline" for options
set statusline=%<%f%h%1*%m%*%r%=%3n\ \ %7(%l,%c%)%V\ %P

" Set short messages
set shortmess=at

" ===========================
" Commands
" ===========================

" Map Y to yank from cursor to end of line, like D and C
map Y y$

" ROT13 - fun
map <F12> ggVGg?

" Stop higlighting with j and k
nnoremap <silent> j j:noh<CR>
nnoremap <silent> k k:noh<CR>

" ===========================
" Miscellaneous
" ===========================

" Set file encoding to utf8
set encoding=utf8

" Keep 100 lines of command line history
set history=100

" Highlight search matches
set hlsearch

" Enable replace-all by default
set gdefault

" Enable incremental searching
set incsearch

" Ignore case when searching, except when capitals are used in the search
set ignorecase
set smartcase

" auto-detect format based on EOL, but choose unix by default
set fileformats=unix,mac,dos

" Stop certain movements from going to the start of the line
set nostartofline

" Use F11 to toggle between paste and nopaste
set pastetoggle=<F11>

" Share windows clipboard
set clipboard+=unnamed 

" Enable Omnicompletion
filetype plugin on
set ofu=syntaxcomplete#Complete

" ===========================
" GVim
" ===========================

if has("gui_running")
    colorscheme sunburst

    " No menu or toolbar
    "set guioptions-=m
    "set guioptions-=T

    " Only rightscrollbars
    set guioptions-=Ll
    set guioptions+=Rr

    " Nice copy'n'paste
    set guioptions+=a

    " No tear off menus
    "set guioptions-=t

endif

" ===========================
" Plugins
" ===========================

" TagList
if has('win32') || has('win64')
    :let Tlist_Ctags_Cmd = "ctags"
else
    :let Tlist_Ctags_Cmd = "/usr/bin/ctags"
endif

" Set the code explorer to \lT
nmap <leader>lT :TlistToggle<CR>

"nmap <leader>lT :call Tla()<CR><CR>
"
"func Tla()
"    fu TlistToggle
"    nmap <leader>lT :call Tlb()<CR>
"endfunc
"
"func Tlb()
"    fu TlistToggle
"    nmap <leader>lT :call Tla()<CR><CR>
"endfunc
