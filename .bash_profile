SSHAGENT=/usr/bin/ssh-agent
SSHAGENTARGS="-s"
if [ -z "$SSH_AUTH_SOCK" -a -x "$SSHAGENT" ]; then
	eval `$SSHAGENT $SSHAGENTARGS`
	trap "kill $SSH_AGENT_PID" 0
fi

#  source the system wide bashrc if it exists  

if [ -e /etc/bash.bashrc ]  ; then  
    source /etc/bash.bashrc  
fi  
# source the users  bashrc if it exists  
if [ -e "${HOME}/.bashrc" ] ; then  
    source  "${HOME}/.bashrc"  
fi  

parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}


#PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$ '


#PS1='\[\033]0;$MSYSTEM:\w\007\033[32m\]\u@\h \[\033[33m\w$(parse_git_branch)\033[0m\] $ '


#PS1='\[\033]0;$MSYSTEM:\w\007
#\033[32m\]\u@\h \[\033[33m\w$(__git_ps1)\033[0m\] $ '
#PS1='[\h]: ${PWD##*/}$(parse_git_branch) > '  
set -o vi  
export  DISPLAY=127.0.0.1:0.0  

#. ~/git-completion.bash
#[ -r ~/.git-prompt.sh ] && . ~/.git-prompt.sh

. ~/.git-completion.sh

source ~/bin/git-prompt.sh

# non-printable characters must be enclosed inside \[ and \]
PS1="\`if [ \$? = 0 ]; then echo -e '\[\e[01;32m\]\n\xE2\x98\xBA'; else echo -e '\[\e[01;31m\]\n\xE2\x98\xB9'; fi\` \[\e[01;34m\]\[\e[00m\]"
PS1=${PS1}'\[\033]0;$MSYSTEM:${PWD//[^[:ascii:]]/?}\007\]' # set window title
#PS1="$PS1"'\n'                 # new line
PS1="$PS1"'\[\033[32m\]'       # change color
PS1="$PS1"'\u@\h '             # user@host<space>
PS1="$PS1"'\[\033[33m\]'       # change color
PS1="$PS1"'\w'                 # current working directory
if test -z "$WINELOADERNOEXEC"
then
  PS1="$PS1"'$(__git_ps1)'   # bash function
fi
PS1="$PS1"'\[\033[0m\]'        # change color
PS1="$PS1"'\n'                 # new line
PS1="$PS1"'$ '                 # prompt: always $
