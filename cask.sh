#!/usr/bin/env bash
set -e

casks=(
  atom
  # brave
  # caret
  clipy
  # docker
  # firefox
  flux
  # github-desktop
  google-chrome
  # google-chrome-canary
  iterm2
  # kap
  # opera
  # vivaldi

  font-roboto-mono
  font-fira-mono
)

echo "Installing casks..."

brew tap caskroom/cask
brew tap caskroom/fonts

brew cask install ${casks[@]}
