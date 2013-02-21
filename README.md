My vim/gvim configuration
=========================

i've setup vim with my own .vimrc, hopefully nicely commented and well laid out.

i use [vundle](https://github.com/gmarik/vundle) to organise plugins. it's awesome; you should use it.
hopefully something like it will become default in vim 8.

Installation
------------

1. clone to a folder, say `~/ivos-vim`
2. `ln -s ~/ivos-vim/vimrc ~/.vimrc`
3. `ln -s ~/ivoz-vim/vim ~/.vim`
4. `cd ~/ivos-vim`
5. `git submodule init`
6. `git submodule update`
7. `vim`
8. `:BundleInstall`
9. done!

My bundles:
-----------

Some have external dependencies.

They can also require python scripting support.

Please see the top of `vimrc` for my list of current plugins, it changes frequently!

Hottest bundle: [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) - up and coming completion engine!
