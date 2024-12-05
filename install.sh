#!/bin/bash -x
stow_packages=$(dirname $0)
install_directory="/home/paul"
install_bin_directory="$install_directory/bin"

stow -d $stow_packages -t $install_directory --dotfiles bash
stow -d $stow_packages -t $install_directory --dotfiles vim
stow -d $stow_packages -t $install_directory --dotfiles tmux
mkdir -p $install_bin_directory
stow -d $stow_packages -t $install_bin_directory bin

