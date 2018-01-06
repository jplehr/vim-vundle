# vim configuration

This repository holds my vim configuration, so it is easy to set up at a new machine.
It will probably be update every now and then.

I am using the vundle pugin manager to keep all the plugins in one place.

~~~{.sh}
git clone https://github.com/jplehr/vim-vundle.git .vim
ln -s .vim/vimrc .vimrc
cd .vim
git submodule init
git submodule update
vim .vimrc
~~~

Inside vim run ```:PluginInstall``` which will download all the repository content and install the necessary components.
