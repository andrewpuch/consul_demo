#!/bin/bash

HOSTNAME=`hostname`
PRIVATE_IP=`curl -s http://169.254.169.254/latest/meta-data/local-ipv4`
ENCRYPT=$1

sed -i -- "s/__NODE_NAME__/$HOSTNAME/g" /root/consul_demo/config.json
sed -i -- "s/__BOOTSTRAP_PRIVATE_IP__/$PRIVATE_IP/g" /root/consul_demo/config.json
sed -i -- "s/__ENCRYPT__/$ENCRYPT/g" /root/consul_demo/config.json
