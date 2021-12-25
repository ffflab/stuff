#!/bin/bash

#
# curl https://raw.githubusercontent.com/ffflab/stuff/master/install/python.sh | bash
# 

set -eux

git clone https://github.com/pyenv/pyenv.git ~/.pyenv

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
echo 'eval "$(pyenv init --path)"' >> ~/.profile
echo 'if command -v pyenv >/dev/null; then eval "$(pyenv init -)"; fi' >> ~/.bashrc

$HOME/.pyenv/bin/pyenv install anaconda3-2021.11
$HOME/.pyenv/bin/pyenv global anaconda3-2021.11
