#!/usr/bin/env bash
set -e

libraries=(
  # create-react-app
  # eslint
  # gifify
  # nodemon
  now
  npm-run
  # textlint
  # webpack
  # webpack-bundle-size-analyzer
  # xo
  # yarn
)

echo "Type latest node version : "
read NODE_VAR

echo "Installing node and libraries..."

nodebrew install-binary $NODE_VAR
nodebrew use $NODE_VAR

npm i -g ${libraries[@]}
