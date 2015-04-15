export NVM_DIR=/usr/local/var/nvm

nvm_completion="$(brew --prefix nvm)/nvm.sh"
[ -f $nvm_completion ] && source $nvm_completion
