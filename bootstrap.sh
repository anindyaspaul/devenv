#!/usr/bin/env sh

# Extract distro ID
distro=$(cat /etc/*release | grep ^ID | cut -d "=" -f 2)

echo "Detected distro: $distro"

case "$distro" in

"ubuntu")
  sudo apt update
  sudo apt install \
    curl \
    stow \
    wget \
    ;
  sudo snap install just --classic
  ;;

"fedora")
  sudo dnf -y install \
    curl \
    just \
    stow \
    wget \
    ;
  ;;

esac

# Symlink stowrc file in home directory
# This provides default stow configuration
# Module specific .stowrc file can be used to override it
ln -s "$(realpath .stowrc)" "$HOME/.stowrc"
