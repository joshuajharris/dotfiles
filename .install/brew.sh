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
  fzf
  git
  htop
  jsonpp
  mas
  mongodb
  neofetch
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


if test !$(which fzf); then
  /usr/local/opt/fzf/install
fi

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
  iterm2
  postman
  rightfont
  sketch
)

brew cask install "${apps[@]}"

# Install fonts

fonts=(
  font-roboto
  font-hack-nerd-font
  font-fira-code
)

brew cask install "${fonts[@]}"

# Install Mac App Store apps
storeApps=(
  ["1091189122"]="Bear"
  ["1055511498"]="Day One"
  ["924726344"]="Deliveries"
  ["975937182"]="Fantastical 2"
  ["1026566364"]="GoodNotes"
  ["441258766"]="Magnet"
  ["928871589"]="Noizio"
  ["568494494"]="Pocket"
  ["957810159"]="Raindrop.io"
  ["507257563"]="Sip"
  ["803453959"]="Slack"
  ["1176895641"]="Spark"
  ["585829637"]="Todoist"
  ["623795237"]="Ulysses"
  ["497799835"]="Xcode"
)

for id in "${!storeApps[@]}"
do
  mas "$id", "${storeApps[$id]}"
done

brew cleanup
