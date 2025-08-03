<h1 align=center>devenv</h1>

🧑‍💻 Everything related to managing my personal development environment.

## Bootstrap

A newly installed system needs to be bootstrapped.

### Clone repo

1. Setup SSH keys. Based on [this guide](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).

```shell
ssh-keygen -t rsa -b 4096 -C "anindya@hostname"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub
```

2. Add the ssh key to github account and clone the repo.

```shell
git clone --recurse-submodules -j8 git@github.com:anindyaspaul/devenv.git
```

### Bootstrap

```shell
./boostrap.sh
```

## Usage

Use `just` command runner to manage the environment.

Run `just` to see available recipes.

### Workflow

Run `just install` to install tools.

Exit the shell.

Run `just configure` to configure the installed tools.

Exit the shell.

Run `just post-install` to perform post-installation setup.


## Guidelines

- Organize recipes and configurations by grouping them into modules.
  - A module is a collection of tightly coupled items. E.g., node and npm.
  - Use module declaration in justfile.
- Make the commands self documenting.
  - Add command documentation for every command.
  - A command that requires follow up action should prompt the next steps.
- Use `sh` scripts to keep scripts POSIX compliant.
  - Use `#!/usr/bin/env sh` shebang in shell scripts.
- Use GNU stow to manage dot files and configurations.

