#!/bin/bash

# Install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install fira code font
if ! fc-list : file family |grep \/Library grep Fira; then
  brew tap homebrew/cask-fonts
  brew cask install font-fira-code
fi
# Install spaceship theme
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~"
# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
