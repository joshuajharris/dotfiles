#!/bin/sh

echo "Setting up Mac..."

# Check that xcode commande line tools are installed
if  [[ $(xcode-select -p) != "/Applications/Xcode.app/Contents/Developer" ]]; then
  echo "Installing Xcode Command Line Tools"
  xcode-select --install
else
  echo "Xcode Command Line Tools are already installed!"
fi

# Check for Homebrew and install if we don't have it
if test !$(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "brew is already installed!"
fi

