#!/bin/sh

echo "Installing gem packages"

gem update --system

pkgs=(
  
)

gem install "${pkgs[@]}"
