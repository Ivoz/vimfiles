My vim/gvim configuration
=========================

i've setup vim with my own .vimrc, hopefully nicely commented and well laid out.

i use [vundle](https://github.com/gmarik/vundle) to organise plugins.
It's awesome; you should use it.
Hopefully something like it will become default in vim 8.

Installation
------------

1. `git clone https://github.com/Ivoz/vimfiles.git ~/.vim`
2. `cd ~/.vim`
3. `git submodule init`
4. `git submodule update`
5. If vim < 7.3, `ln -s ~/.vim/vimrc ~/.vimrc`
7. `vim`
8. `:BundleInstall`
9. done!

My bundles:
-----------

Some have external dependencies, like YouCompleteMe.

They can also require python scripting support.

Please see the top of `vimrc` for my list of current plugins,
it changes frequently!

Hottest bundle: [vim-css-color](https://github.com/ap/vim-css-color) - see the
colors of CSS codes you type in!
