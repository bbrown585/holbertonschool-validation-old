#!/bin/bash
apt-get update && apt-get install curl make npm
npm install -g n
n 16.0.0
hash -r
npm install -g markdownlint-cli
npm install netlify-cli -g
apt-get update && apt-get install -y hugo make
apt-get install curl -y
curl -Lo install_hugo.deb https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_linux-amd64.deb
apt-get install ./install_hugo.deb
npm install -g npm@9.4.0
npm install -g markdownlint-cli
rm ./install_hugo.deb
sudo apt install zip
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.19.5.linux-amd64.tar.gz
export PATH=/usr/local/go/bin:$PATH
<<<<<<< HEAD

=======
>>>>>>> e7c3f3dd64dea1b9b4fc45731e30fd1e89458658
