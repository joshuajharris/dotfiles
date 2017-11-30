#!/bin/sh

if [[ $OSTYPE == "darwin" ]]; then
  sh ./macos.sh
fi

if [[ $OSTYPE == "linux-gnu" ]]; then
  sh ./linux.sh
fi

# suppress welcome message
if [ ! -f $HOME/.hushlogin ]; then
  touch $HOME/.hushlogin
fi

# Install n to manage node versions
curl -L https://git.io/n-install | bash
n latest

# Package manages and packages
sh ./brew.sh
# sh ./gem.sh
sh ./npm.sh
sh ./apm.sh
# sh ./go.sh

# Install oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

chsh -s /bin/zsh

echo "bootstrapping complete!"
killall Terminal
