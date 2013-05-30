"$ Vim 7.3

" don't try to emulate vi's (unfriendly) behaviour
set nocompatible  

"" Vundle
filetype off
if has('win32') || has('win64')
    let $VIMHOME=expand('~/vimfiles')
else
    let $VIMHOME=expand('~/.vim')
endif
set rtp+=$VIMHOME/bundle/vundle
call vundle#rc()
" Requires Git - Makes sense of all these Bundle commands
Bundle 'gmarik/vundle'


"" Highlighting / Language support
"
" Cool
Bundle 'cool.vim'
" Go highlighting
Bundle 'jnwhiteh/vim-golang'
" Html5 highlighting
Bundle 'othree/html5.vim'
" Javascript
Bundle 'othree/vim-javascript-syntax'
" Git higlighting and tidbits
Bundle 'tpope/vim-git'
" Haml, Sass, Scss support
Bundle 'tpope/vim-haml'
" Markdown highlighting
Bundle 'tpope/vim-markdown'
" Updated ruby support
Bundle 'vim-ruby/vim-ruby'
" Nginx config highlighting
Bundle 'xhr/vim-nginx'
" Everything Python!
"Bundle 'klen/python-mode'

"" Colors
"
" molokai
Bundle 'tomasr/molokai'
" Zenburn
Bundle 'jnurmine/Zenburn'

"" Functionality
"
" Requies PHPUnit on path
Bundle 'docteurklein/vim-phpunit'
" Help navigation - use <CR> and <BS>
Bundle 'juanpabloaj/help.vim'
" Fuzzy File/Buffer/MRU finding - <C-P>
Bundle 'kien/ctrlp.vim'
" NYAN CAT
"Bundle 'koron/nyancat-vim'
" EasyMotion, to fast-find - \{f,F,t,T,w,W,etc...} 
Bundle 'Lokaltog/vim-easymotion'
" Vim Powerline - can use Patched Fonts
Bundle 'Lokaltog/vim-powerline'
" TagBar for source code browsing - \tb
" Requires exuberant ctags
Bundle 'majutsushi/tagbar'
" :Gist to paste into Gist and copy url, -p for private
" Requires Curl
Bundle 'mattn/gist-vim'
" Required for gist-vim and ideone-vim
Bundle 'mattn/webapi-vim'
" To expand html - <c-y>
Bundle 'mattn/zencoding-vim'
" Give vim a clean room to edit in with \V
Bundle 'mikewest/vimroom'
" Play snake! :Snake x y; i to start
"Bundle 'mfumi/snake.vim'
" Delimiter autocompletion
Bundle 'Raimondi/delimitMate'
" Check for syntactic correctness!
Bundle 'scrooloose/syntastic'
" Snippets
Bundle 'SirVer/ultisnips'
" Commenting - gc{motion} or gcc (line)
Bundle "tomtom/tcomment_vim"
" Fugitive - git shortcuts for vim
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-repeat'
" Easily surround text with other text
Bundle 'tpope/vim-surround'
" EasyTree for FS browsing - \et
Bundle 'troydm/easytree.vim'
" Code Completion, C++ requires Clang >= 3.2
Bundle 'Valloric/YouCompleteMe'

"" Vim-scripts bundles
"
" Better % matching
Bundle 'matchit.zip'
" <c-w>o to toggle current window full-screen
Bundle 'ZoomWin'


" ===========================
" Appearance
" ===========================

" Set font
if has('win32') || has('win64')
    set gfn=Consolas:h10
else
    set gfn="DejaVu Sans Mono":h10
    " Powerline font-fixing
    "set guifont="Ubuntu Mono Powerline"
    let g:Powerline_symbols = 'compatible'
endif

" Detect screen/tmux running
if match($TERM, "screen")!=-1
  set term=screen-256color
endif

" Detect 256 color terminals
if ($COLORTERM == 'gnome-terminal') || ($TERM == 'xterm-256color')
    set t_Co=256
endif

" Set colorscheme
colorscheme delek
if &t_Co == 256
    colorscheme zenburn
endif

" Perform syntax highlighting (colours code by syntax)
syntax enable

" Set the background scheme to dark // can reset coloscheme
set background=dark

" When inserting a bracket, jump briefly to matching bracket
set showmatch

" Show line numbers
set number
" Make them relative
set relativenumber

" Enable mouse
set mouse=a

" Enable showing EOL, tabs, etc
set list

" Which characters to show
set listchars=eol:$,tab:>-,trail:-

" ===========================
" Indentation and tabs
" ===========================

" Allow backspace to delete over autoindent, end of line, and the
" start of the current insertion
set backspace=indent,eol,start

" Set indentation to 4 spaces
set shiftwidth=4

" Tab key goes in 4 spaces (but existing tabs are displayed 8 wide)
set softtabstop=4

" Set how many spaces a tab is displayed as
set tabstop=4

" Expand tabs into spaces
set expandtab

" Set vim to detect filetypes; will run ~/.vim/ftplugin/<filetype>.vim
" Set automatic indentation depending upon the detected file type
filetype plugin indent on

" Make sure that TABs work exactly as TABs in Makefiles 
autocmd FileType make setlocal noexpandtab
autocmd FileType make setlocal softtabstop=0

" Use spaces for python,json
autocmd FileType python,json setlocal expandtab

" Use 2-space indent for html,ruby,yaml,json
autocmd FileType html,ruby,yaml,json setlocal shiftwidth=2
autocmd FileType html,ruby,yaml,json setlocal tabstop=2
autocmd FileType html,ruby,yaml,json setlocal softtabstop=2

" Use 8-space tabbed-indent for c, go
autocmd FileType c,go setlocal shiftwidth=8
autocmd FileType c,go setlocal tabstop=8
autocmd FileType c,go setlocal softtabstop=8
autocmd FileType c,go setlocal noexpandtab

" Indentation options for C indenting.
"     :0  -- case labels are indented 0 spaces in from switch
"     (2  -- indent 2 spaces within unclosed parentheses
"     m1  -- line up close parentheses with start of opening line
"     b1  -- align break with its case label
"     t0  -- function return type declaration not indented
"     c1  -- indent text inbetween comments by 1
" there are _many_ more options; do ":help cinoptions-values" to see them
set cinoptions=:0,m1,b1,t0,c1

" For non-C files (such as assembly language), use autoindenting
set autoindent
set smarttab

" ===========================
" Status line
" ===========================

" Display incomplete commands
set showcmd

" Always display the status line, even if there is only a single window
set laststatus=2

" Using vim-powerline instead
" customize the status line.  Do ":help statusline" for options
"set statusline=%<%f%h%1*%m%*%r%=%3n\ \ %7(%l,%c%)%V\ %P

" Set short messages
set shortmess=at

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

" Auto-detect format based on EOL, but choose unix by default
set fileformats=unix,mac,dos

" Stop certain movements from going to the start of the line
set nostartofline

" Use F11 to toggle between paste and nopaste
set pastetoggle=<F11>

" Share windows clipboard
set clipboard+=unnamed 

" How long to wait for multi-char mappings, in ms
set timeoutlen=300

" Enable Omnicompletion
" Windows requires Exuberant Ctags v5.7+
"set ofu=syntaxcomplete#Complete

" Directory to save .swp files in
set directory=~/.vim-tmp//,~/.tmp//,/var/tmp//,/tmp//,.


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
" Commands
" ===========================

" jj insert mode exits insert mode
inoremap jj <Esc>

" Map Y to yank from cursor to end of line, like D and C
map Y y$

" ROT13 - funtimes
map <F12> ggVGg?

" Stop higlighting with j and k
nnoremap <silent> j j:noh<CR>
nnoremap <silent> k k:noh<CR>

" ,cd to change working dir to current file's
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

" oo create a new line insertlessly below
nnoremap oo o<Esc>

" OO create a new line insertlessly above
nnoremap OO O<Esc>

" :W to write with sudo
command W w !sudo tee % > /dev/null

" ===========================
" Plugins
" ===========================

" Enable cool highlighting
au BufNewFile,BufRead *.cool setf cool 

" Super re-tab -use :'<,'>SuperRetab n 
" to convert n spaces to tabs, at the beginning of lines
:command! -nargs=1 -range SuperRetab <line1>,<line2>s/\v%(^ *)@<= {<args>}/\t/g

" Fix expansion of brackets with delimitMate
let g:delimitMate_expand_cr = 1

" Gist-Vim
let g:gist_clip_command = 'xclip -sel clip'
let g:gist_detect_filetype = 1
let g:gist_private = 1

" phpunit compilation
com! -nargs=* Phpunit make -c app <q-args> | cw

" Easy tree is set to \et
nmap <leader>et :EasyTree<CR>
let g:easytree_ignore_files=['*.swp','*.py[dcob]','*.rpyc']

" Set the code explorer to \tb
nmap <leader>tb :TagbarToggle<CR>

"autocmd VimEnter * TagbarOpen

" Set easymotion key to \{f,F,t,T,w,W,etc...}
let g:EasyMotion_leader_key = '<Leader>'

" Popup error window for syntastic
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=0
let g:syntastic_loc_list_height=4
let g:syntastic_python_checkers=['flake8']

" Vimroom
let g:vimroom_sidebar_height=1

" Ultisnip + YVM 'integration'
function! g:UltiSnips_Complete()
    call UltiSnips_ExpandSnippet()
    if g:ulti_expand_res == 0
        if pumvisible()
            return "\<C-n>"
        else
            call UltiSnips_JumpForwards()
            if g:ulti_jump_forwards_res == 0
               return "\<TAB>"
            endif
        endif
    endif
    return ""
endfunction

au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
" Stop completion with enter, in addition to default ctrl+y
imap <expr> <CR> pumvisible() ? "\<c-y>" : "<Plug>delimitMateCR"
