#!/usr/bin/env bash
set -e

packages=(
  # activate-power-mode
  atom-beautify
  autocomplete-paths
  file-icons
  # linter
  # linter-eslint
  # linter-textlint
  one-vibrancy
  pigments
  # project-manager
  # react
)

echo "Installing atom packages..."
apm install ${packages[@]}
