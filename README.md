# consul_demo
Consul service discovery tool examples. 

```
sudo su
apt-get update
apt-get install git unzip -y
cd /root
wget https://dl.bintray.com/mitchellh/consul/0.5.2_linux_amd64.zip
unzip 0.5.2_linux_amd64.zip
rm -f 0.5.2_linux_amd64.zip
mv consul /usr/bin/
git clone https://github.com/andrewpuch/consul_demo.git
cd /root/consul_demo
consul keygen

# Bootstrap / Web UI Server
---------------------------
cp bootstrap.json config.json

*Edit __BOOTSTRAP_PRIVATE_IP__ and __BOOTSTRAP_PUBLIC_IP__ and __ENCRYPT__*

nohup consul -config-dir /root/consul_demo/config.json &

# Non Boostrap Consul Server
---------------------------
cp server.json config.json

*Edit __BOOTSTRAP_PRIVATE_IP__ and __ENCRYPT__*

nohup consul -config-dir /root/consul_demo/config.json &

# Consul Agent Server
---------------------------
cp agent.json config.json

*Edit __BOOTSTRAP_PRIVATE_IP__ and __ENCRYPT__*

nohup consul -config-dir /root/consul_demo/config.json &
```
