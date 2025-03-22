#!/bin/bash

# Install Prerequisites
echo "Installing prerequisites ..."

# update system
sudo apt-get update

# install Go، Rust و Git
sudo apt-get install -y golang rustc git
curl -L https://risczero.com/install | bash && rzup install

# clone LayerEdge repositorie
git clone https://github.com/Layer-Edge/light-node.git
cd light-node

# Copy the environmental settings file
cp ../config/.env.example .env

echo "Prerequisites installed."