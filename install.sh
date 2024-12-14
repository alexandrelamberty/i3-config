#!/bin/bash
# i3 configuration installation

PACKAGE=config
TARGET=$HOME
DIR="$(dirname "$0")"

printf "i3 configuration installation\n"
rm -rf "$HOME/.config/i3"
stow -d "$DIR" -vDt "$TARGET" $PACKAGE
stow -d "$DIR" -vSt "$TARGET" $PACKAGE

