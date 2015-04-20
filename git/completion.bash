completion="$(brew --prefix)/etc/bash_completion.d/git-completion.bash"

if test -f "$completion"
then
  # load git completion
  source "$completion"

  # set completion for `g` alias
  __git_complete g __git_main
fi
