#!/bin/bash

# Update package list and upgrade existing packages
sudo apt update
sudo apt upgrade -y

# Install Barrier
sudo apt install barrier -y

# Install Chrome
# You can manually download Chrome from the website and install it.

# Install Caffeine
sudo apt install caffeine -y

# Install Slack
sudo snap install slack --classic

# Install Zoom
# Download Zoom from the website and then install it.
# Example: sudo apt install ./zoom_amd64.deb

# Install NetSpeed
sudo apt install chrome-gnome-shell -y
# Install Extension Manager manually as described
# Search for and install Net Speed extension

# Install VS Code
# Download VS Code .deb package from the website and install it.
# Example: sudo apt install ./<file>.deb

# Install PulseAudio
sudo apt install pulseaudio pavucontrol -y

# Install ZSH
sudo apt install zsh -y

# Install ZSH dependencies
sudo apt install git curl vim -y

# Install AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# Install kubectl
# Follow the provided link for installation instructions

# Install kubectx and kubens
sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx
sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens
mkdir -p ~/.oh-my-zsh/custom/completions
chmod -R 755 ~/.oh-my-zsh/custom/completions
ln -s /opt/kubectx/completion/_kubectx.zsh ~/.oh-my-zsh/custom/completions/_kubectx.zsh
ln -s /opt/kubectx/completion/_kubens.zsh ~/.oh-my-zsh/custom/completions/_kubens.zsh
echo "fpath=($ZSH/custom/completions $fpath)" >> ~/.zshrc

# Install Python3 pip
sudo apt install python3-pip -y

# Install Vault
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install vault -y

# Install jq
sudo apt install -y jq

# Install yq
sudo snap install yq

# Install libkecca and sha3sum
git clone https://github.com/maandree/libkeccak
cd libkeccak
make
sudo make install
cd ..
git clone https://github.com/maandree/sha3sum.git
cd sha3sum
autoreconf -i
./configure
make
sudo make install

# Generate SSH Keys (Replace <user> with your username)
ssh-keygen -t ed25519
cat /home/<user>/.ssh/id_ed25519.pub

# You may need to manually configure and upload SSH keys to your Git repositories

echo "All installations and configurations are complete."