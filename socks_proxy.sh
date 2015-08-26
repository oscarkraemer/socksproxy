#!/bin/bash
source config
networksetup -setsocksfirewallproxystate $networkservice on
ssh -f -N -M -S $socksname -C -D $port $user\@$server 
echo socket location: $socksname
read -p "Press [Enter] to exit proxy..." 
networksetup -setsocksfirewallproxystate $networkservice off
ssh -S $socksname -O exit $user\@$server

