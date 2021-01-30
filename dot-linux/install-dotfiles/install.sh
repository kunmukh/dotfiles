#!/bin/zsh

DOTFILES=$HOME/dotfiles
ZSH=$HOME/.oh-my-zsh

cd $DOTFILES

echo " STEP 1: Install oh-my-zsh"

if test -d $ZSH  
then 
    echo "already installed, now upgrade..."
    source $ZSH/oh-my-zsh.sh
    upgrade_oh_my_zsh || (echo "Error upgrad oh-my-zsh"; exit 1)
else 
    echo "installing..."
    scripts/use-oh-my-zsh.sh || (echo "Error running scripts/use-oh-my-zsh.sh" || exit 1)
fi 

echo "STEP 2: Install necessary APT packages"
read -q "REPLY?Do you want to run apt command to install packages? (y/N) " 

echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
	echo $REPLY
	scripts/setup-ubuntu.sh
else
	echo "skipping"
fi

echo "STEP 3: link dot files"

scripts/link-dot-files.sh

# set-up fzf

echo "STEP 4:  setting up fzf"
[[ "20.04" = "$(lsb_release -r |cut -f2)" ]] ||  (git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf; $HOME/.fzf/install)

# (optional) set-up gpg keys

echo "Run the following commands to set-up gpg keys"
echo ""
echo "gpg --full-generate-key"
echo "gpg --list-secret-keys --keyid-format long"
echo "gpg --armor --export"


