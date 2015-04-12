git_prompt=/usr/local/etc/bash_completion.d/git-prompt.sh
[ -f $git_prompt ] && source $git_prompt

# regular colors
BLACK='\[\033[0;30m\]'
RED='\[\033[0;31m\]'
GREEN='\[\033[0;32m\]'
YELLOW='\[\033[0;33m\]'
BLUE='\[\033[0;34m\]'
MAGENTA='\[\033[0;35m\]'
CYAN='\[\033[0;36m\]'
WHITE='\[\033[0;37m\]'

# empahsized (bolded) colors
EMBLACK='\[\033[1;30m\]'
EMRED='\[\033[1;31m\]'
EMGREEN='\[\033[1;32m\]'
EMYELLOW='\[\033[1;33m\]'
EMBLUE='\[\033[1;34m\]'
EMMAGENTA='\[\033[1;35m\]'
EMCYAN='\[\033[1;36m\]'
EMWHITE='\[\033[1;37m\]'

# background colors
BGBLACK='\[\033[40m\]'
BGRED='\[\033[41m\]'
BGGREEN='\[\033[42m\]'
BGYELLOW='\[\033[43m\]'
BGBLUE='\[\033[44m\]'
BGMAGENTA='\[\033[45m\]'
BGCYAN='\[\033[46m\]'
BGWHITE='\[\033[47m\]'

COLOREND='\[\033[0m\]'

working_directory() {
  local pwdmaxlen=$(tput cols)/5
  local trunc_symbol=".."
  local dir=${PWD##*/}

  pwdmaxlen=$(( ( pwdmaxlen < ${#dir} ) ? ${#dir} : pwdmaxlen ))

  NEW_PWD=${PWD/$HOME/\~}

  local pwdoffset=$(( ${#NEW_PWD} - pwdmaxlen ))

  if [ ${pwdoffset} -gt "0" ]
  then
    NEW_PWD=${NEW_PWD:$pwdoffset:$pwdmaxlen}
    NEW_PWD=${trunc_symbol}/${NEW_PWD#*/}
  fi

  echo -e "${EMBLUE}${NEW_PWD}${COLOREND}"
}

git_state() {
  GIT_PS1_SHOWCOLORHINTS=1
  GIT_PS1_SHOWDIRTYSTATE=1
  GIT_PS1_SHOWSTASHSTATE=1
  GIT_PS1_SHOWUNTRACKEDFILES=1
  GIT_PS1_SHOWUPSTREAM="auto"

  command -v __git_ps1 > /dev/null
  if [ $? -eq 0 ]
  then
    echo "${EMMAGENTA}$(__git_ps1 ' (%s)')${COLOREND}"
  fi
}

prompt_time() {
  echo "${BGWHITE}${EMBLACK}\t${COLOREND}"
}

prompt() {
  if [[ $? -eq 0 ]]; then
    exit_status="${GREEN} › ${COLOREND}"
  else
    exit_status="${RED} › ${COLOREND}"
  fi

  PS1="$(prompt_time) $(working_directory)$(git_state)${exit_status}"
}

PROMPT_COMMAND=prompt
