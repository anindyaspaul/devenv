mod alacritty
mod bashrc
mod dircolors
mod fonts
mod fzf
mod ghostty
mod homebrew
mod mise
mod mocca
mod nodejs
mod nvim
mod sdkman
mod starship
mod tmux
mod utils

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

# Factory reset module using reset recipe
reset module:
    just {{module}} reset

# Remove module using remove recipe
remove module:
    just {{module}} remove
