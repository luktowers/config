#!/bin/bash

# Non-interactive environment setup
export DEBIAN_FRONTEND=noninteractive

# Update package list and upgrade existing packages
sudo apt update -q
sudo apt upgrade -yq

# Install Zsh
sudo apt install zsh -yq

# Set Zsh as the default shell
chsh -s $(which zsh) $(whoami)

# Copy theme (assuming you've already downloaded or created oblivyun.zsh-theme)
cp oblivyun.zsh-theme ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/oblivyun.zsh-theme

# Install Oh My Zsh (non-interactive)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Copy .zshrc configuration (assuming you've already created .zshrc)
cp .zshrc ~/.zshrc

# Clone zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Clone zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
