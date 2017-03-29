#!/bin/sh

# Check for Homebrew and install if we don't have it
if test !$(which brew); then
  echo "brew is not installed. Installing now..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing packages and apps through brew/mas"

# Update Homebrew Recipes
brew update

# Upgrade any alreading-installed formulae
brew upgrade

# Install the best editor ever
brew install vim --with-override-system-vi

# Binaries
bins=(
  ack
  boot2docker
  docker
  git
  jsonpp
  mas
  mongodb
  pv
  pyenv
  rsync
  ssh-copy-id
  tmux
  tree
  vim
  watch
  xz
  zsh
  zsh-syntax-highlighting
)

brew install "${bins[@]}"

# Apps
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions
brew tap caskroom/fonts

apps=(
  alfred
  atom
  bartender
  cheatsheet
  cleanmymac
  cloud
  dash
  google-chrome
  google-drive
  hyper
  postman
  rightfont
  sketch
)

brew cask install "${apps[@]}"

# Install fonts

fonts=(
  font-roboto
)

brew cask install "${fonts[@]}"

# Install Mac App Store apps
storeApps=(
  ["937984704"]="Amphetamine"
  ["1055511498"]="Day One"
  ["924726344"]="Deliveries"
  ["975937182"]="Fantastical 2"
  ["1026566364"]="GoodNotes"
  ["441258766"]="Magnet"
  ["928871589"]="Noizio"
  ["957810159"]="Raindrop.io"
  ["507257563"]="Sip"
  ["803453959"]="Slack"
  ["1176895641"]="Spark"
  ["623795237"]="Ulysses"
  ["497799835"]="Xcode"
)

for id in "${!storeApps[@]}"
do
  mas "$id", "${storeApps[$id]}"
done

brew cleanup
