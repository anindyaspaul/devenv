# alacritty
mod alacritty
# set of base tools
mod base
# bashrc modifications
mod bashrc
# dircolors
mod dircolors
# fonts
mod fonts
# fzf
mod fzf
# ghostty
mod ghostty
# mise version manager
mod mise
# mocca stuff
mod? mocca
# nodejs toolchain
mod nodejs
# neovim
mod nvim
# sdkman for java toolchain
mod sdkman
# starship shell prompt
mod starship
# tmux
mod tmux

# List available recipes
help:
    @just --list --unsorted

# Install module using install recipe
install module:
    just {{module}} install

# Configure module using configure recipe
configure module:
    just {{module}} configure

# Update module using update recipe
update module:
    just {{module}} update

# Remove module using remove recipe
remove module:
    just {{module}} remove
