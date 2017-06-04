# Canales's Dotfiles

## Installation

The main installation script `install.sh` will install "oh-my-zsh" and everything from Brewfile, generate **dotfiles** in your `$HOME` and run `.macos`.

    chmod +x install.sh
    ./install.sh

## Manual

Install everything from `Brewfile`

    brew bundle

(or check what's missing with `brew bundle check`)

Install the dotfiles:

    env RCRC=$HOME/dotfiles/rcrc rcup

Sync the dotfiles:

    rcup -v

Run `.macos` script:

    source .macos

## Maintaining

Exclude files from RCM by adding them in `rcrc` and running to generate `~/.rcrc`.

    env RCRC=$HOME/.dotfiles/rcrc rcup

Update the `Brewfile` with:

    brew bundle dump --force

(or update manually)

RCM Quickref. Files starting with a '.' are ignored by RCM.

    lsrc				# lists all dotfiles
    rcup -v				# updates any symlinks
    mkrc ~/.randomrc		# adds new rc file

## Resources

- RCM: https://github.com/thoughtbot/rcm
- oh-my-zsh: https://github.com/robbyrussell/oh-my-zsh
