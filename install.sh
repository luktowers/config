#!/bin/bash

# Update package list and upgrade existing packages
sudo apt update
sudo apt upgrade -y

# Install Zsh
sudo apt install zsh -y

# Set Zsh as the default shell
chsh -s $(which zsh)

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp .zshrc ~/.zshrc

# Install Exa
apt install exa

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

cp oblivyun.zsh-theme ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/oblivyun.zsh-theme


