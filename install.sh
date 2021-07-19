#!/bin/sh

DOTFILES_DIR=$(pwd)
CONFIG=$DOTFILES_DIR/config

# Create symlinks
ln -s -f $CONFIG/vim/.vimrc ~/.vimrc
ln -s -f $CONFIG/bash/.bashrc ~/.bashrc
ln -s -f $CONFIG/bash/.aliases ~/.aliases
ln -s -f $CONFIG/tmux/tmux.conf ~/.tmux.conf
ln -s -f $CONFIG/vim/tex.snippets ~/.vim/UltiSnips/tex.snippets


# Setup Newsboat
if [ -d ~/.newsboat ]; then
  ln -s -f $CONFIG/newsboat/config ~/.newsboat/config
else
  echo "Newsboat not installed; skipping newsboat setup..."
fi

echo "Done!"
exit 0
