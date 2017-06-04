#!/bin/sh

echo "========================================"
echo "Installing oh-my-zsh..."
echo "========================================"

# Check for Homebrew and install if we don't have it
if test ! $(which zsh); then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  echo "\x1B[32m...Done...\x1B[0m"
else 
	echo "\x1B[33m...Already installed...\x1B[0m"
fi

echo "========================================"
echo "Installing from Brewfile..."
echo "========================================"

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

echo "========================================"
echo "Syncing dotfiles..."
echo "========================================"

env RCRC=$HOME/.dotfiles/rcrc rcup

echo "\x1B[32m...Done...\x1B[0m"

# Create a Sites directory
# This is a default directory for macOS user accounts but doesn't comes pre-installed
# mkdir $HOME/Sites

# Set macOS preferences
# We will run this last because this will reload the shell
# source .macos
