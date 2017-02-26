#!/usr/bin/env bash
set -e

packages=(
  # asciinema
  # bash
  # curl
  # ghq
  git
  # go
  # hugo
  # imagemagick
  # micro
  nodebrew
  pandoc
  # peco
  # python
  # python3
  # tmux
  # vim
  # wifi-password
  # wrk
  zsh
)

echo "Installing homebrew and packages..."
xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install ${packages[@]}
