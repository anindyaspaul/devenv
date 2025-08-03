<h1 align=center>devenv</h1>

🧑‍💻 Everything related to managing my personal development environment.

## Bootstrap

A newly installed system needs to be bootstrapped.

```sh 
./boostrap.sh
```

## Usage

Use `just` command runner to manage the environment.

Run `just` to see available recipes.

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

