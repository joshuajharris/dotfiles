#!/bin/sh

echo "Installing global npm packages"

pkgs=(
  browser-sync
  create-react-app
  gulp-cli
  http-server
  nodemon
  pure-prompt
  tldr
)

npm install --global "${pkgs[@]}"
