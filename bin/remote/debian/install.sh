#!/usr/bin/env bash

# updates packages, apt with HTTPS enabled
sudo apt-get update -y
sudo apt-get install -y \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common

# adds the Docker GPG key
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

# adds the Docker repository on apt
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

# installs Docker, enable root-less usage
sudo apt-get update -y
sudo apt-get install -y docker-ce
sudo systemctl start docker
sudo systemctl enable docker
sudo groupadd docker
sudo usermod -aG docker "$USER"

# installs some basic tools
sudo apt-get install -y vim tmux git

# installs docker-compose
sudo curl -L \
    https://github.com/docker/compose/releases/download/1.24.0/docker-compose-"$(uname-s)"-"$(uname -m)" \
    -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# installs kubectl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo touch /etc/apt/sources.list.d/kubernetes.list
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl

# installs pip3, updates awscli
sudo apt-get install -y python3-pip
sudo pip3 install awscli --upgrade
