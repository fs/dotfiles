completion="$(brew --prefix)/etc/profile.d/bash_completion.sh"

if test -f "$completion"
then
  # load bash completion
  source "$completion"
fi
