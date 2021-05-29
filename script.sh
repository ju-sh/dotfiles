#!/bin/bash

HOME_PATH="/home/user/"

cp emacs/.emacs $HOME_PATH
cp tmux/.tmux.conf $HOME_PATH

cp mutt/.mailcap $HOME_PATH
cp mutt/.muttrc $HOME_PATH

mkdir -p $HOME_PATH/.vim/
cp vim/digraph_defs.vim $HOME_PATH/.vim/
cp vim/.vimrc $HOME_PATH

mkdir -p $HOME_PATH/.elinks/
cp elinks/elinks.conf $HOME_PATH/.elinks/

mkdir -p $HOME_PATH/.config/i3/
cp i3/config $HOME_PATH/.config/i3/

mkdir -p $HOME_PATH/.config/i3status/
cp i3status/config $HOME_PATH/.config/i3/

mkdir -p $HOME_PATH/.config/nvim/
cp nvim/init.vim $HOME_PATH/.config/nvim/
