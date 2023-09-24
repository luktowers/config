# Update package list and upgrade existing packages
apt update && apt upgrade -y

# Install Zsh
sudo apt install zsh -y

# Set Zsh as the default shell
chsh -s $(which zsh) $(whoami)

# Install Oh My Zsh (non-interactive)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended > /dev/null 2>&1

# Download and copy theme
curl -O https://raw.githubusercontent.com/luktowers/config/main/oblivyun.zsh-theme
mv oblivyun.zsh-theme ~/.oh-my-zsh/custom/themes/oblivyun.zsh-theme

# Clone zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# Clone zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Install exa
sudo apt uninstall exa

# Download .zshrc configuration
curl -O https://raw.githubusercontent.com/luktowers/config/main/.zshrc

# Source ~/.zshrc
zsh -c 'source ~/.zshrc'

# Run zsh
exec zsh
