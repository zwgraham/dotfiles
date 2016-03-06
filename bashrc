# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

###########################
#
# $PATH setup
#
###########################
PATH=${PATH}:~/.scripts
PATH=~/.cabal/bin:${PATH}  #sandbox haskell
if [ -d ~/src/android-sdk-linux ]; then
    PATH=${PATH}:~/src/android-sdk-linux/platform-tools:~/src/android-sdk-linux/tools
fi
export PATH
##########################
#
# IPython
#
##########################
if [ -e ~/.vim/ftplugin/python/ipy.vim ]; then
    stty stop unset  # we need c-s
fi
###########################
#
# User specific aliases and functions
#
###########################
set -o vi #represent
export EDITOR=/usr/bin/vim
export PAGER=/usr/bin/less

alias glo="git log --oneline"
