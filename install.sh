#!/bin/sh

# I've just learnt few things about shell scripts
# recently at school, so this file is probably
# full of errors and it's not even been tested

# I made it for linux, I'm not aware of others OSs

echo "Before starting, I don't suggest to use this script"
echo "Are you really sure you want to continue? [y/n]"
read answer1

if [ "$answer1" == "n" ]; then
  exit 0;
fi

echo "Too late! the script has started!"
echo "I hope you're using Linux"

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

curl -sL install-node.vercel.app/lts | bash

mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf


cd .config

if [ -d nvim ]; then
  if [ -f nvim_OLD ]; then
    rename nvim nvim_o0Oo0Oo0OLD
  fi
  rename nvim nvim_OLD
fi

echo "Do you have an ssh key for github? [y/n]"
read answer2

if [ "$answer2" == "y" ]; then
  git clone git@github.com:frr0/nvim.git
else
  git clone https://github.com/frr0/nvim.git
fi

nvim +PlugInstall +qall

exit 0
