#!/bin/sh

DOTFILES_DIR=$(pwd)
CONFIG=$DOTFILES_DIR/config

# Create symlinks
ln -s -f $CONFIG/vim/.vimrc ~/.vimrc
ln -s -f $CONFIG/bash/.bashrc ~/.bashrc
ln -s -f $CONFIG/bash/.aliases ~/.aliases

# Setup Newsboat
if [ -d ~/.newsboat ]; then
  ln -s -f $CONFIG/newsboat/config ~/.newsboat/config
else
  echo "Newsboat not installed; aborting newsboat setup..."
fi

echo "Done!"
exit 0
