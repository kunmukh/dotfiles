#/bin/sh
DOTFILES=$PWD

# Pwndbg
git clone https://github.com/pwndbg/pwndbg ~/pwndbg-src
cd ~/pwndbg-src
./setup.sh
cd - 
echo "source ~/pwndbg-src/gdbinit.py" > ~/.gdbinit_pwndbg

# PEDA
git clone https://github.com/longld/peda.git ~/peda

# GEF
wget -q -O ~/.gdbinit-gef.py https://github.com/hugsy/gef/raw/master/gef.py

# Copy binaries to /usr/bin/
sudo cp ${DOTFILES}/bin/gdb-* /usr/bin/

