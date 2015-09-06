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

# Bootstrap / Web UI Server
cd /root/consul_demo
cp bootstrap.json config.json
nohup consul -config-dir /root/consul_demo/bootstrap.json &

# Non Boostrap Consul Server
cd /root/consul_demo
cp server.json config.json
nohup consul -config-dir /root/consul_demo/server.json &

# Consul Agent Server
cd /root/consul_demo
cp agent.json config.json
nohup consul -config-dir /root/consul_demo/agent.json &
```
