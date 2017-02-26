#!/usr/bin/env bash
set -e

url="https://raw.githubusercontent.com/rxon/dotfiles/master"

for i in brew.sh node.sh cask.sh atom.sh .macos
do
bash -c "$(curl -fsSL $url/$i)"
done

curl -fsSL zplug.sh/installer | zsh

curl -fsSL $url/.zshrc >.zshrc
curl -fsSL $url/.gitconfig >>.gitconfig
