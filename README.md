# `.vim`
This is my `.vim` and my `.vimrc`. It is very basic and I don't update them very
often. Also note that my vim is setup to work with the Solus Project version
that already contains a few non standard 'saner' defaults.

# Usage in case I ever need to reinstall this

These few lines should setup this `.vimrc` and download the vim plugins I use.
Installation has to be done in `~/` because I didn't take the time to setup
Vundle for elsewhere.

    git clone --recurse-submodules git@github.com:savamarc/.vim.git ~/.vim
    ln -sf ~/.vim/.vimrc ~/.vimrc
    vim +PluginInstall +qall
