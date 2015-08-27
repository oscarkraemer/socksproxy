#!/bin/bash
source config

function socksStatus {
    networksetup -getsocksfirewallproxy $networkservice |grep "Yes\|No"
}

case $1 in 
    '')
        socksStatus
        ;;

    -s|--start)
        networksetup -setsocksfirewallproxystate $networkservice on
        ssh -f -N -M -S $socksname -C -D $port $user\@$server
        networksetup -getsocksfirewallproxy $networkservice
        ;;

    -e|--end)
        networksetup -setsocksfirewallproxystate $networkservice off
        ssh -S $socksname -O exit $user\@$server
        networksetup -getsocksfirewallproxy $networkservice
        ;;
    --status)
        networksetup -getsocksfirewallproxy $networkservice
        ;;


esac


