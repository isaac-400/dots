#!/bin/bash

DOTFILES_DIR=$(pwd)
CONFIG=$DOTFILES_DIR/config

# Create symlinks
ln -s -f $CONFIG/vim/.vimrc ~/.vimrc
ln -s -f $CONFIG/bash/.bashrc ~/.bashrc


# Setup Newsboat
if ! [ -d ~/.newsboat ]; then
	echo "Newsboat not installed; aborting..."
	exit 1
fi

ln -s -f $CONFIG/newsboat/config ~/.newsboat/config
ln -s -f $CONFIG/newsboat/urls ~/.newsboat/urls

echo "Done!"
exit 0
