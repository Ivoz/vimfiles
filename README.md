My vim/gvim configuration
=========================

I've setup vim with my own .vimrc, hopefully nicely commented and well laid out.

I use [Vundle](https://github.com/gmarik/vundle) to organise plugins. It's awesome; you should use it.
Hopefully something like it will become default in vim 8.

Installation
------------

1. Clone to a folder, say ~/ivos-vim
2. `ln -s ~/ivos-vim/.vimrc ~/.vimrc`
3. `ln -s ~/ivoz-vim/.vim ~`
4. `cd ~/.vim`
5. `git submodule init`
6. `git submodule update`
7. `vim`
8. `:BundleInstall`
9. Done!

My bundles:
-----------

#### Github bundles
* gmarik/vundle
* mattn/gist-vim
* mattn/zencoding-vim
* mfumi/snake.vim
* scrooloose/nerdcommenter
* scrooloose/nerdtree
* tpope/vim-commentary
* tpope/vim-fugitive
* tpope/vim-git
* tpope/vim-markdown
* tpope/vim-repeat
* tpope/vim-surround
* Townk/vim-autoclose

#### Vim-scripts bundles
* matchit.zip
* taglist.vim
* mru.vim
* UltiSnips
* ZoomWin

