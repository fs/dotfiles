# export PYENV_ROOT=/usr/local/var/pyenv
# export PATH="$PYENV_ROOT:$PATH"

if command -v pyenv > /dev/null; then
  eval "$(pyenv init -)";
fi
