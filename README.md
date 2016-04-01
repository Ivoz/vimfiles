My vim/gvim configuration
=========================

I've setup vim with my own .vimrc, hopefully nicely commented and well laid out.

I use [vim-plug](https://github.com/junegunn/vim-plug) to organise plugins.
It's awesome; you should try it.
Hopefully something like it will become default in vim 8.

Installation
------------

1. `git clone --recursive https://github.com/Ivoz/vimfiles.git ~/.vim`
2. If vim < 7.3, `ln -s ~/.vim/vimrc ~/.vimrc`
3. `vim`
4. `:PlugInstall`
5. done!

My bundles:
-----------

Some have external dependencies, like YouCompleteMe.

They can also require python scripting support.

Please see the top of `vimrc` for my list of current plugins,
it changes frequently!

Hottest bundle: [vim-css-color](https://github.com/ap/vim-css-color) - see the
colors of CSS codes you type in!

Build YCM with semantic C completion
------------------------------------

Works on Arch Linux.

Needs: Boost, Clang, Go, Node.js & npm, TypeScript

If your OS doesn't have up-to-date versions of Boost & Clang, you likely
don't want the system version of those. See [YCM Installation Guide](https://github.com/Valloric/YouCompleteMe#installation)

Run in an empty directory

    #!/usr/bin/bash
    here=$(pwd)
    cmake -G "Unix Makefiles" -DUSE_SYSTEM_BOOST=ON -DUSE_SYSTEM_LIBCLANG=ON . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
    # Go support
    cd ~/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/gocode
    go build
    # Tern/JS support
    cd ~/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/tern_runtime
    npm install --production
    cd $here
    cmake --build . --target ycm_core --config Release
