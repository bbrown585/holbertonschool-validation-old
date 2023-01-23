#!/bin/bash

# Installation of Go-Hugo and Make command
apt-get update && apt-get install -y hugo make wget
# fixing the recipe for 'build' target fail
# getting latest release of 'hugo'
wget https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_linux-amd64.deb	
# install it
dpkg -i hugo_extended_0.109.0_linux-amd64.deb	
# Running command build to build the website
make build
