# sdkman for java toolchain
mod sdkman
# nodejs toolchain
mod nodejs

# List available recipes
help:
    @just --list --unsorted

# Install module using install recipe
install module:
    just {{module}} install

# Update module using update recipe
update module:
    just {{module}} update

