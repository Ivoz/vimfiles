my vim/gvim configuration
=========================

i've setup vim with my own .vimrc, hopefully nicely commented and well laid out.

i use [vundle](https://github.com/gmarik/vundle) to organise plugins. it's awesome; you should use it.
hopefully something like it will become default in vim 8.

installation
------------

1. clone to a folder, say `~/ivos-vim`
2. `ln -s ~/ivos-vim/.vimrc ~/.vimrc`
3. `ln -s ~/ivoz-vim/.vim ~`
4. `cd ~/.vim`
5. `git submodule init`
6. `git submodule update`
7. `vim`
8. `:BundleInstall`
9. done!

my bundles:
-----------

Some have external dependencies, shown after the --
They can also require python scripting support.

#### github bundles
* gmarik/vundle `-- git`
* ervandew/supertab
* jnwhiteh/vim-golang
* mattn/gist-vim `-- curl, git`
* mattn/zencoding-vim
* mfumi/snake.vim
* rip-rip/clang_complete `-- clang`
* scrooloose/nerdtree
* tpope/vim-commentary
* tpope/vim-fugitive `-- git`
* tpope/vim-git
* tpope/vim-markdown
* tpope/vim-repeat
* tpope/vim-surround
* townk/vim-autoclose
* xhr/vim-nginx

### vim-scripts bundles
* matchit.zip
* taglist.vim `-- exuberant ctags`
* mru.vim
* ultisnips
* zoomwin
 
