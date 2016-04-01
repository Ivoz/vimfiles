" don't try to emulate vi's (unfriendly) behaviour
set nocompatible


"" Vim-plug
if has('win32') || has('win64')
    let $VIMHOME=expand('~/vimfiles')
else
    let $VIMHOME=expand('~/.vim')
endif
call plug#begin($VIMHOME.'/bundle')


"" Highlighting / Language support
"
" Jade
Plug 'digitaltoad/vim-jade', { 'for': 'jade' }
" Go
Plug 'fatih/vim-go', { 'for': 'go' }
" ReStructedText support
Plug 'mitsuhiko/vim-rst', { 'for': 'rst' }
" Html5
Plug 'othree/html5.vim', { 'for': 'html' }
" Javascript
Plug 'othree/yajs.vim', { 'for': ['javascript', 'html'] }
" Git higlighting and tidbits
Plug 'tpope/vim-git'
" Haml, Sass, Scss support
Plug 'tpope/vim-haml', { 'for': ['haml', 'sass', 'scss'] }
" Markdown
Plug 'tpope/vim-markdown', { 'for': 'markdown' }
" Updated ruby support
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
" Nginx config
Plug 'xhr/vim-nginx'
" Everything Python!
"Plug 'klen/python-mode'

"" Colors
" Jellehbeanz
Plug 'nanotech/jellybeans.vim'
" CSS Colours
Plug 'ap/vim-css-color'

"" Functionality
"
" Help navigation - use <CR> and <BS>
Plug 'juanpabloaj/help.vim'
" Fuzzy File/Buffer/MRU finding - <C-P>
Plug 'kien/ctrlp.vim'
" NYAN CAT
"Plug 'koron/nyancat-vim'
" EasyMotion, to fast-find - \{f,F,t,T,w,W,etc...} 
Plug 'Lokaltog/vim-easymotion'
" Powered up status line
Plug 'bling/vim-airline'
" TagBar for source code browsing - <F8>
" Requires exuberant ctags
Plug 'majutsushi/tagbar'
" :Gist to paste into Gist and copy url, -p for private
" Requires Curl
Plug 'mattn/webapi-vim' | Plug 'mattn/gist-vim'
" To expand html - <c-y>
Plug 'mattn/emmet-vim', { 'for': 'html' }
" Give vim a clean room to edit in with \V
Plug 'mikewest/vimroom'
" Delimiter autocompletion
Plug 'Raimondi/delimitMate'
" Check for syntactic correctness!
Plug 'scrooloose/syntastic'
" Snippets - <C-j>
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" Commenting - gc{motion} or gcc (line)
Plug 'tomtom/tcomment_vim'
" Fugitive - git shortcuts for vim
Plug 'tpope/vim-fugitive'
" Easily repeat the below surroundings

Plug 'tpope/vim-repeat'
" Easily surround text with other text
Plug 'tpope/vim-surround'
" EasyTree for FS browsing - <F7>
Plug 'troydm/easytree.vim'
" Code Completion, C++ requires Clang >= 3.2
Plug 'Valloric/YouCompleteMe'
" .ycm_extra_conf.py generator - :YcmGenerateConfig
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable', 'on': 'YcmGenerateConfig' }

"" Vim-scripts bundles
"
" Better % matching
Plug 'matchit.zip'
" <c-w>o to toggle current window full-screen
Plug 'ZoomWin'

" All of your Plugins must be added before the following line
call plug#end()
" ===========================
" Appearance
" ===========================

" Set font
if has('win32') || has('win64')
    set gfn=Consolas:h10
else
    set gfn="DejaVu Sans Mono":h10
endif

" Detect screen/tmux running
if match($TERM, "screen") != -1
  set term=screen-256color
endif

" Detect 256 color terminals
if ($COLORTERM == 'gnome-terminal') || ($TERM == 'xterm-256color')
    set t_Co=256
endif

" Set colorscheme
colorscheme delek " inbuilt fallback theme
colorscheme jellybeans

" Perform syntax highlighting (colours code by syntax)
syntax enable

" Set the background scheme to dark // can reset coloscheme
" set background=dark

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
set listchars=tab:>-,trail:-

" Highlight the 80th column
set colorcolumn=81

" ===========================
" Status line
" ===========================

" Display incomplete commands
set showcmd

" Always display the status line, even if there is only a single window
set laststatus=2

" Using airline instead
" customize the status line.  Do ":help statusline" for options
"set statusline=%<%f%h%1*%m%*%r%=%3n\ \ %7(%l,%c%)%V\ %P

" Set short messages
set shortmess=at

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

" Always use spaces for python
autocmd FileType python setlocal expandtab

" filetypes to turn on spelling for
autocmd FileType markdown,rst,txt setlocal spell

" Use 2-space indent for html,css,scss,ruby,yaml
autocmd FileType html,css,scss,jade,ruby,yaml setlocal shiftwidth=2
autocmd FileType html,css,scss,jade,ruby,yaml setlocal tabstop=2
autocmd FileType html,css,scss,jade,ruby,yaml setlocal softtabstop=2

" Deal with json as a file extension (filetype javascript)
autocmd BufNewFile,BufRead *.json setlocal shiftwidth=2
autocmd BufNewFile,BufRead *.json setlocal tabstop=2
autocmd BufNewFile,BufRead *.json setlocal softtabstop=2

" Use 8-space tabbed-indent for c, go
autocmd FileType c,go setlocal shiftwidth=8
autocmd FileType c,go setlocal tabstop=8
autocmd FileType c,go setlocal softtabstop=8
autocmd FileType c,go setlocal noexpandtab

" Saltstack sls files are yaml
autocmd BufNewFile,BufRead *.sls setlocal filetype=yaml

" Indentation options for C indenting.
"     :0  -- case labels are indented 0 spaces in from switch
"     (0  -- indent 0 spaces within unclosed parentheses
"     m1  -- line up close parentheses with start of opening line
"     b1  -- align break with its case label
"     t0  -- function return type declaration not indented
"     c1  -- indent text inbetween comments by 1
" there are _many_ more options; do ":help cinoptions-values" to see them
set cinoptions=:0,(0,m1,b1,t0,c1,U1,w1,j1,J1

" For non-C files (such as assembly language), use autoindenting
set autoindent
set smarttab

" Python indentation options
let g:pyindent_open_paren = '&sw'
let g:pyindent_nested_paren = '&sw'
let g:pyindent_continue = '&sw'

" ===========================
" Miscellaneous
" ===========================

" Share windows clipboard
set clipboard^=unnamed

" Directory to save .swp files in
set directory=~/.vim-tmp//,~/tmp//,/var/tmp//,/tmp//,.

" Set file encoding to utf8
set encoding=utf8

" Auto-detect format based on EOL, but choose unix by default
set fileformats=unix,mac,dos

" Enable replace-all by default
set gdefault

" Keep 100 lines of command line history
set history=100

" Highlight search matches
set hlsearch

" Enable incremental searching
set incsearch

" Ignore case when searching, except when capitals are used in the search
set ignorecase
set smartcase

" Only redraw screen when macros have finished
set lazyredraw

" Stop certain movements from going to the start of the line
set nostartofline

" Use F11 to toggle between paste and nopaste
set pastetoggle=<F11>

" Set spelling language
set spelllang=en_au

" How long to wait for multi-char mappings, in ms
set timeoutlen=300

" ===========================
" GVim
" ===========================

if has("gui_running")
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

" jk exits insert mode
inoremap jk <Esc>

" Map Y to yank from cursor to end of line, like D and C
map Y y$

" ROT13 - funtimes
map <F12> ggVGg?

" Stop higlighting with j and k
nnoremap <silent> j j:noh<CR>
nnoremap <silent> k k:noh<CR>

" <leader>cd to change working dir to current file's
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

" Super re-tab - use :'<,'>SuperRetab n
" to convert n spaces to tabs, at the beginning of lines
:command! -nargs=1 -range SuperRetab <line1>,<line2>s/\v%(^ *)@<= {<args>}/\t/g

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '│'
let g:airline_left_sep = '»'
let g:airline_right_sep = '«'

" Fix expansion of brackets with delimitMate
let g:delimitMate_expand_cr = 1
" Stop completion with enter, in addition to default ctrl+y
imap <expr> <CR> pumvisible() ? "\<c-y>" : "<Plug>delimitMateCR"

" Gist-Vim
let g:gist_clip_command = 'xclip -selection clipboard'
let g:gist_detect_filetype = 1
let g:gist_post_private = 1
let g:gist_open_browser_after_post = 1

" Vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1

" phpunit compilation
com! -nargs=* Phpunit make -c app <q-args> | cw

" Easy tree is set to <F7>
nmap <F7> :EasyTreeToggle<CR>
let g:easytree_ignore_files=['*.swp','*.py[dcob]','*.rpyc']

" Set the code explorer to <F8>
nmap <F8> :TagbarToggle<CR>

"autocmd VimEnter * TagbarOpen

" Set easymotion key to \{f,F,t,T,w,W,etc...}
let g:EasyMotion_leader_key = '<Leader>'

" Popup error window for syntastic
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=0
let g:syntastic_loc_list_height=4
let g:syntastic_python_checkers=['flake8']
" vim-go compatibility
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

" UltiSnips
let g:UltiSnipsExpandTrigger='<c-j>'
let g:UltiSnipsJumpForwardTrigger='<c-j>'
let g:UltiSnipsJumpBackwardTrigger='<c-k>'
let g:UltiSnipsSnippetDirectories=[$VIMHOME.'/bundle/vim-snippets/UltiSnips']

" Vimroom
let g:vimroom_sidebar_height=1

" Close ycm's autocomplete window after it's helped
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_confirm_extra_conf    = 0
let g:ycm_global_ycm_extra_conf = $VIMHOME.'/ycm_extra_conf.py'
let g:ycm_extra_conf_vim_data   = ['&filetype']
let g:ycm_seed_identifiers_with_syntax = 1

