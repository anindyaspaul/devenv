# Aliases
alias v=nvim

alias ll='ls -lah'
alias x='clear && ls -lah'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Improve history
shopt -s histappend   # append to the history file, don't overwrite it
HISTCONTROL=erasedups # remove all previous lines matching current line
HISTSIZE=100000       # number of commands stored in one terminal session
HISTFILESIZE=10000000 # number of commmands stored in file
HISTIGNORE="?:??"     # dont store one and two letter commands
# Append and reload the history after each command
# PROMPT_COMMAND="history -a; history -n"
# Above overwrites the starship prompt. So add it using starship.
function refresh_history() {
  history -a
  history -n
}
starship_precmd_user_func="refresh_history"
