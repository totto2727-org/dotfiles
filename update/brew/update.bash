#!/bin/bash

brew update
brew upgrade

brew bundle dump -f --file "~/dotfiles/static/package/Brewfile"
cat ~/dotfiles/static/package/Brewfile | rg -e '^(brew|tap)' | rg --pcre2 '^(?!.*cask).*$' >~/dotfiles/static/package/Brewfile.brew
cat ~/dotfiles/static/package/Brewfile | rg --pcre2 '(^cask)|(^tap (?=.*cask))' >~/dotfiles/static/package/Brewfile.cask
cat ~/dotfiles/static/package/Brewfile.cask | rg --pcre2 'font' >~/dotfiles/static/package/Brewfile.cask.font
