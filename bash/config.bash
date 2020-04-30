bind "set completion-ignore-case on"

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

export ARCHFLAGS='-arch x86_64'

export LC_CTYPE=en_US.UTF-8

export VISUAL="subl"
export EDITOR="$VISUAL"
export LESS="FRX"
export RI="--format ansi -T"

export CLICOLOR=1
export LSCOLORS=gxgxcxdxbxegedabagacad
export CLICOLOR LSCOLORS
export GREP_OPTIONS='--color=auto' # --line-number
export IGNOREEOF="1"

export HISTFILESIZE=20000
export HISTSIZE=20000
export HISTCONTROL=ignoredups
export HISTCONTROL=ignoreboth
export HISTIGNORE="&:ls:[bf]g:exit"

# Hide "default interactive shell is now zsh"
export BASH_SILENCE_DEPRECATION_WARNING=1

shopt -s histappend
shopt -s cmdhist
shopt -s checkwinsize
