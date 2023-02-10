#!/bin/bash

set -eu

sudo apt-get update
sudo apt-get install -y \
    bash-completion \
    jq
sudo apt-get clean
sudo rm -rf /var/lib/apt/lists/*

echo . /usr/share/bash-completion/bash_completion >> ~/.bashrc
