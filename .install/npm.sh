#!/bin/sh

echo "Installing global npm packages"

pkgs=(
  browser-sync
  create-react-app
  git-open
  gulp-cli
  http-server
  instant-markdown-d
  nodemon
  npm-check
  pure-prompt
  tldr
)

npm install --global "${pkgs[@]}"
