#!/usr/bin/env sh

# Extract distro ID
distro=$(cat /etc/*release | grep ^ID | cut -d "=" -f 2)

echo "Detected distro: $distro"

if [ "$distro" == "fedora" ]; then
  sudo dnf -y install \
    stow \
    just
else
  sudo snap install just --classic
fi
