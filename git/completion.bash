completion="$(brew --prefix)/etc/bash_completion.d/git-completion.bash"

if test -f "$completion"
then
  source "$completion"
fi
