#!/bin/bash

if [ -z $1 ]
then
    echo -e "Usage: checkport [port number]"
    exit
else
    IP_ADDRESS=$(curl --silent ifconfig.me/ip) > /dev/null
    RESULT=$(curl --silent --data "port=$1&IP=$IP_ADDRESS" https://www.canyouseeme.org |grep Success)

    if [[ -z $RESULT ]]
    then
        echo -e "The port $1 is NOT open!"
    else
        echo -e "The port $1 IS open!"
    fi
fi

