# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
set -o vi #represent

function linein-loopback () {
    STATUS=$( pactl list modules |grep -B 1 module-loopback|grep Module|cut -d# -f2 ) 
    echo $STATUS
    if [[ "$1" ==  "status" ]] 
    then 
        if [[  -n "$STATUS" ]]  
        then 
            printf "Line-in to speaker loopback loaded as Pulse Audio Modile #%d\n" $STATUS
        else
            printf "Line-in to speaker loopback is not loaded\n"
        fi
    elif [[ "$1" == "on" ]]
    then
        if [[ ! -z "$STATUS" ]]
        then
            pactl load-module module-loopback
        fi
    elif [[ "$1" == "off" ]]
    then
        if [[ -n $STATUS ]]
        then
            for n in $STATUS
            do
                printf "Unloading Module %d\n" $n
                pactl unload-module $n
            done 
        fi
    fi
}
