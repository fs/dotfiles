export RBENV_ROOT=/usr/local/var/rbenv

rbenv_completion="$RBENV_ROOT/completions/rbenv.bash"
[ -f $rbenv_completion ] && source $rbenv_completion

if which rbenv > /dev/null; then
  eval "$(rbenv init -)";
fi
