#!/bin/bash

RCFILE="$HOME/.bashrc"

if [ "$(uname)" == "Darwin" ]; then
	RCFILE="$HOME/.zshrc"
fi


echo $RCFILE

CONDITION='if [ -f "$HOME/.asalsabyte_dotfiles.sh" ]; then source "$HOME/.asalsabyte_dotfiles.sh"; fi'

## Copy files
cp asalsabyte_dotfiles.sh "$HOME/.asalsabyte_dotfiles.sh"

## Source from .bashrc
grep -qxF "$CONDITION" "$RCFILE" || echo "$CONDITION" >> "$RCFILE"

