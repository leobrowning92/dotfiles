username="leo.browning"


# Homebrew
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# MacOS Editor
export EDITOR='subl -w'

# MacOS Aliases
## List Users
alias listusers="dscacheutil -q user | grep -A 3 -B 2 -e uid:\ 5'[0-9][0-9]'"
alias ls='ls -FG'
alias ll='ls -laFG'

## Compress PDFs
alias pdf-compress="gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$1-compressed.pdf $1"
alias pdf-compress-extreme="gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$1-extreme-compressed-pdf.pdf $1"

## SSH Keys
sshkeypw() {
	lpass show "SSH Keys/$1" --field=Passphrase | pbcopy
}

## Fix Offsceen Windows
alias fix-offscreen='wmctrl -r $1 -e 0,2560,1440,1200,700'
alias fix-offscreen-ext='wmctrl -r $1 -e 0,0,0,2560,1300'


# Git
source ~/.git/git-completion.bash

# Utils
export PATH=/Users/$username/bin:$PATH

# Python
. "/Users/$username/miniconda3/etc/profile.d/conda.sh"
# default conda env


# Generic Aliases

## SSH
ssh-new-agent() {
	eval 'ssh-agent -s'
	ssh-add -K ~/.ssh/$1
}


# Prompt colours

CLEAR="\[\e[0m\]"
WHITE="\[\e[1;37m\]"
PINK="\[\e[1;35m\]"
YELLOW="\[\e[1;33m\]"
GREEN="\[\e[1;32m\]"
GREYBLUE="\[\e[1;94m\]"
CYAN="\[\e[1;96m\]"
RED="\[\e[1;31m\]"


# check_conda_env ()
# {
#     if [ ! -z "$CONDA_DEFAULT_ENV" ]; then
#         printf -- "%s" "[${GREYBLUE}`basename $CONDA_DEFAULT_ENV`${WHITE}]"
#     fi
# }

check_env ()
{
    if [ ! -z "$VIRTUAL_ENV" ]; then
        printf -- "%s" "[${CYAN}`basename $VIRTUAL_ENV`${WHITE}]"
    elif [ ! -z "$CONDA_DEFAULT_ENV" ]; then
        printf -- "%s" "[${GREYBLUE}`basename $CONDA_DEFAULT_ENV`${WHITE}]"
    fi
}

git_prompt() {
  BRANCH=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/*\(.*\)/\1/' | sed -e 's/^[[:space:]]*//')

  if [ ! -z $BRANCH ]; then
    echo -n "${WHITE}{${RED}$BRANCH${WHITE}}${CLEAR}"
  fi
}

set_bash_prompt() {
        export PS1="${PINK}\w${WHITE} @ ${YELLOW}\h${CLEAR} ${WHITE}(${GREEN}\u${WHITE}) $(check_env) $(git_prompt) \n${WHITE}$"
        export PS2="${WHITE}| => ${CLEAR}"
}
export PROMPT_COMMAND=set_bash_prompt
