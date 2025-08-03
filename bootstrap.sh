#!/usr/bin/env sh

# Extract distro ID
distro=$(cat /etc/os-release | grep ^ID= | cut -d "=" -f 2)

echo "Detected distro: $distro"

case "$distro" in

"ubuntu")
  sudo apt update
  sudo apt install \
    curl \
    stow \
    wget \
    ;
  sudo snap install --classic just
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

git config user.name "Anindya Sundar Paul"
git config user.email "a@anindyaspaul.com"

# Symlink stowrc file in home directory
# This provides default stow configuration
# Module specific .stowrc file can be used to override it
ln -s "$(realpath .stowrc)" "$HOME/.stowrc"
