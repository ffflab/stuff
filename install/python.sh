#!/bin/bash

#
# curl https://raw.githubusercontent.com/ffflab/stuff/master/install/python.sh | bash
# 

set -eux

sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev -y

git clone https://github.com/pyenv/pyenv.git ~/.pyenv

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
echo 'eval "$(pyenv init --path)"' >> ~/.profile
echo 'if command -v pyenv >/dev/null; then eval "$(pyenv init -)"; fi' >> ~/.bashrc

$HOME/.pyenv/bin/pyenv install anaconda3-2021.11
$HOME/.pyenv/bin/pyenv global anaconda3-2021.11
