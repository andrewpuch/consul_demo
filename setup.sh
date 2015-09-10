#!/bin/bash

usage() {
    echo ""
    echo "${0} <type>"
    echo ""
    echo "Arguments"
    echo "Encrypt    - [REQUIRED] This is acquired by running consul keygen."
    echo "Private IP - [REQUIRED] The private IP address of the bootstrap server."
    echo ""

    return
}

# Check to make sure the correct number of arguments is passed.
if [ "$#" -ne 2 ]; 
then
    usage
    exit
fi

HOSTNAME=`hostname`
ENCRYPT=$1
PRIVATE_IP=$2

sed -i -- "s/__NODE_NAME__/$HOSTNAME/g" /root/consul_demo/config.json
sed -i -- "s/__BOOTSTRAP_PRIVATE_IP__/$PRIVATE_IP/g" /root/consul_demo/config.json
sed -i -- "s/__ENCRYPT__/$ENCRYPT/g" /root/consul_demo/config.json
