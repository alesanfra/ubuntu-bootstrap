#!/bin/sh

echo "Update system"
apt update && apt dist-upgrade -y

echo "Install utlities"
apt install -y git build-essential curl wget jq htop nvidia-cuda-toolkit tilix nvtop golang-go

echo "Install IDEs"
snap refresh
snap install pycharm-community --classic
snap install code --classic

echo "Install chromium"
snap install chromium --classic

echo "Install rust"
wget https://sh.rustup.rs -O /tmp/rustup.sh
bash /tmp/rustup.sh -y

echo "Install miniconda"
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /tmp/miniconda.sh
bash /tmp/miniconda.sh -b -p $HOME/.miniconda3
