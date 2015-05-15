tmux_completion="$(brew --prefix)/etc/bash_completion.d/tmux"
[ -f "$tmux_completion" ] && source "$tmux_completion"

tmuxinator_completion="$(brew --prefix)/etc/bash_completion.d/tmuxinator"
[ -f "$tmuxinator_completion" ] && source "$tmuxinator_completion"
