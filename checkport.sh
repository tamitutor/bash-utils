#!/bin/bash

if [ -z $1 ]
then
    echo -e "Usage: checkport [port number]"
    exit
else
    IP_ADDRESS=$(curl ifconfig.me/ip)
    RESULT=$(curl --data "port=$1&IP=$IP_ADDRESS" http://www.canyouseeme.org |grep -i success)

    if [ -z $RESULT ]
    then
        echo -e "\nThe port $1 is NOT open!"
    else
        echo -e "\nThe port $1 IS open!"
    fi
fi

