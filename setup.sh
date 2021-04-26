#!/bin/bash

RCFILE="$HOME/.bashrc"

if [ "$(uname)" == "Darwin" ]; then
	RCFILE="$HOME/.zshrc"
fi

if command -v go &> /dev/null ; then
	go get -u github.com/tomnomnom/assetfinder
	go get -u github.com/tomnomnom/gf
	go get -u github.com/tomnomnom/httprobe
	go get -u github.com/tomnomnom/anew
	go get -u github.com/tomnomnom/fff
	go get -u github.com/tomnomnom/waybackurls
fi

echo $RCFILE

CONDITION='if [ -f "$HOME/.asalsabyte_dotfiles.sh" ]; then source "$HOME/.asalsabyte_dotfiles.sh"; fi'

## Copy files
cp asalsabyte_dotfiles.sh "$HOME/.asalsabyte_dotfiles.sh"

## Source from .bashrc
grep -qxF "$CONDITION" "$RCFILE" || echo "$CONDITION" >> "$RCFILE"

