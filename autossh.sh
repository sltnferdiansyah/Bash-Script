#!/bin/bash

#create key
ssh-keygen -t rsa
echo "type your ssh key path"
sleep 1
echo "or leave it empty if you use the default path"
read key
#authentication
echo "type address you want to connect"
read remote_server
echo "type user of $remote_server"
read user
echo "type $remote_server ssh port"
read port

#copy key
if [ -n "$key"] 
    then  ssh-copy-id -p $port $user@$remote_server 
else
   ssh-copy-id -i $key -p $port $user@$remote_server 
fi