# socksproxy
Socksproxy is used to set up a ssh tunnel and to create a system wide SOCKS proxy connection to that server.

Pros: Can have multiple config files. Don't need to configure browser everytime you want to use a proxy. The browser should be configured to use the system proxy. 

socksproxy -s to start default proxy.

socksproxy -e to end/stop the default proxy.

#Configuration:
cp conf/example conf/default and eddit it.

Find out your diffrent networkservices: networksetup -listallnetworkservices
networkservice="Wi-Fi"
Port you want to use:
port="1234"
Location of control socket. Is used to close the connection
socksname="/tmp/socks-default"
Username on the server
user="username"
Servername
server="hostname.org"
