#!/bin/bash

echo "Installing packages..."
sudo pacman -S --needed - < packages.txt

echo "Copying configs..."
mkdir -p ~/.config
cp -r .config/* ~/.config/

echo "Copying dotfiles..."

[ -f .bashrc ] && cp .bashrc ~/
[ -f .zshrc ] && cp .zshrc ~/

echo "Done."
