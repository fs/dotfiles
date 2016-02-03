export NVM_DIR=/usr/local/var/nvm
export PHANTOMJS_BIN="$(which phantomjs)"

nvm="$(brew --prefix nvm)/nvm.sh"
[ -f "$nvm" ] && source "$nvm"
