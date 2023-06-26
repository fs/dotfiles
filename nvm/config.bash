# export NVM_DIR
# NVM_DIR=/usr/local/var/nvm

export PHANTOMJS_BIN
PHANTOMJS_BIN="$(command -v phantomjs)"

nvm="$(brew --prefix nvm)/nvm.sh"
[ -f "$nvm" ] && source "$nvm"
