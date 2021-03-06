#
# ~/.bashrc
#

#if [ $(tty) == "/dev/tty1" ]; then
#	sway -d 2> ~/sway.log
#	exit 0
#fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


#-----------------------------------------------------------------------------
# GO settings
#-----------------------------------------------------------------------------
export GOROOT=/usr/local/go
export GOPATH=~/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin:~/bin:~/scripts

#-----------------------------------------------------------------------------
# JAVA settings
#-----------------------------------------------------------------------------
export JAVA_HOME=/opt/java
export JDK7_HOME=$JAVA_HOME
export PATH=$PATH:$JAVA_HOME/bin

#-----------------------------------------------------------------------------
# GRADLE settings
#-----------------------------------------------------------------------------
export GRADLE_HOME=/usr/local/gradle
export PATH=$PATH:$GRADLE_HOME/bin

#-----------------------------------------------------------------------------
# QT settings
#-----------------------------------------------------------------------------
export QT_QPA_PLATFORMTHEME="qt5ct"

#-----------------------------------------------------------------------------
# BASH settings
#-----------------------------------------------------------------------------

shopt -s histappend
shopt -s checkwinsize

export BLOCKSIZE=K
export HISTFILE=~/.bash_history
export HISTCONTROL=ignoreboth
export LANG="en_US.UTF-8"
export PAGER=less
export SYSTEMD_PAGER=less
export EDITOR=vim
export HISTSIZE=1000

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

#-----------------------------------------------------------------------------
# ALAIS
#-----------------------------------------------------------------------------

alias vi='vim'
alias grep='grep --color --exclude-dir=".git"'
alias mux='TERM=xterm-256color tmux -2 -u attach || TERM=xterm-256color tmux -2 -u new'
alias ls='ls --color=auto'
alias sudo='sudo -s'
alias ssh='TERM=xterm-color ssh'
alias mosh='TERM=xterm-color mosh'
alias mail='~/.mutt/mail.sh'
#-----------------------------------------------------------------------------
# PS1
#-----------------------------------------------------------------------------

git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

case "$TERM" in
        st-256color) color_prompt=yes;;
        tmux) color_prompt=yes;;
        rxvt) color_prompt=yes;;
        linux) color_prompt=yes;;
        xterm) color_prompt=yes;;
        screen) color_prompt=yes;;
        xterm-color) color_prompt=yes;;
        rxvt-unicode) color_prompt=yes;;
        tmux-256color) color_prompt=yes;;
        xterm-256color) color_prompt=yes;;
        screen-256color) color_prompt=yes;;
        rxvt-unicode-256color) color_prompt=yes;;
esac

if [ "$color_prompt" = yes ]; then
        if [ `whoami` = "root" ]; then
            PS1="\[\e[0;31m\]\h\[\e[0m\]:\w\[\e[0m\]\$(git_branch) \n\$ "
        else
            PS1="\[\e[0;33m\]\h\[\e[0m\]:\w\[\e[0m\]\$(git_branch) \n\$ "
        fi

else
    PS1='\u@\h:\w\$ '
fi

if [ "${TERM}" != linux ]; then
        export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}\007"'
fi

#-----------------------------------------------------------------------------
# Terminix settings
#-----------------------------------------------------------------------------
#if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
#	        source /etc/profile.d/vte.sh
#fi

#-----------------------------------------------------------------------------
# Host overrides
#-----------------------------------------------------------------------------
if [ -f ~/.bash_`hostname` ]; then
. ~/.bash_`hostname`
fi

source $HOME/.cargo/env
