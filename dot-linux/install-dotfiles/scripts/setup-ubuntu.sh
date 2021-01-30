#!/bin/sh

# package generation command
#

# package installation command
sudo apt update
sudo apt autoremove
grep -v ^# apt.list | awk '{print "sudo apt install -y  " $0 }'|sh

# pyenv
# curl https://pyenv.run | bash

# set-up libsecret for git config credentail
cd /usr/share/doc/git/contrib/credential/libsecret
sudo make
cd -
