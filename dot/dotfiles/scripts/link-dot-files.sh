#!/bin/bash
# Link all dotfiles into ~ using GNU Stow, assuming we are in ~/dotfiles
set -ex

DOTFILE=${HOME}/dotfiles

# to avoid .zshrc conflict.
test -f ${HOME}/.zshrc && (mv ${HOME}/.zshrc ${HOME}/.zshrc.org)

stow -v 3 -t ${HOME} home

# avoiding ssh key conflict.
test -d /tmp/.ssh && cp /tmp/.ssh/id_rsa* "${HOME}/.ssh" && rm -r /tmp/.ssh

# cloning zsh plugins
test -d ${HOME}/.oh-my-zsh/custom/plugins/zsh-completions || git clone https://github.com/zsh-users/zsh-completions.git ${HOME}/.oh-my-zsh/custom/plugins/zsh-completions
test -d ${HOME}/.oh-my-zsh/custom/plugins/zsh-autosuggestions || git clone https://github.com/zsh-users/zsh-autosuggestions.git ${HOME}/.oh-my-zsh/custom/plugins/zsh-autosuggestions

GPG=$(which gpg)
test -f ${HOME}/.gitconfig && mv ${HOME}/.gitconfig ${HOME}/.gitconfig.org
sed -e s/##HOME##/${HOME//\//\\/}/ ${DOTFILE}/scripts/gitconfig.tmpl| sed -e s/##GPG##/${GPG//\//\\/}/  > ${HOME}/.gitconfig

echo "==="
echo "please run the following commands to set-up gpg key"

echo "gpg --full-generate-key"
echo "gpg --list-secret-keys --keyid-format long"
echo "gpg --armor --export"
echo "==="

echo "$HOME/.gitconfig file created. Run the following command to choose appropriate signing key"
echo "\$ gpg --list-secret-keys --keyid-format long"

echo "Installing vim-plug (junegunn/vim-plug)"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
