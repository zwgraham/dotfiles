# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

=======
###########################
#
# $PATH setup
#
###########################
PATH=${PATH}:~/.scripts
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
if [[ $(hostname) == "overmind" ]]
then
    #need pythonpath specified to use gnuradio, etc
    export PYTHONPATH=/usr/local/lib64/python2.7/site-packages
    #export LD_LIBRARY_PATH=/usr/lib:/usr/local/lib:/usr/lib64:/usr/local/lib64
    export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/usr/local/lib64/pkgconfig
fi


