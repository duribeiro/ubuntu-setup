#!/bin/bash
# ubuntu-setup script for productivity terminal environment
# Created by Antigravity AI, confirmed by User

set -e

echo "=========================================================="
echo " Starting Ubuntu Productivity Setup Script "
echo "=========================================================="

echo "1. System Update & Upgrade..."
sudo apt update && sudo apt upgrade -y

echo "2. Installing Base System Utilities (curl, wget, git, build-essential, nano)..."
sudo apt install -y curl wget git build-essential nano

echo "3. Installing Terminal Utilities (zsh, bat, fzf, zoxide)..."
# In Ubuntu, 'bat' is installed as 'batcat'
sudo apt install -y zsh bat fzf zoxide

echo "3.1. Installing fastfetch..."
sudo add-apt-repository ppa:zhangsongcui3371/fastfetch -y || true
sudo apt update
sudo apt install -y fastfetch || echo "Fastfetch installation failed, continuing..."

echo "4. Installing lsd (Modern ls with icons)..."
# Busca a última versão (tag release) diretamente da API do GitHub
LSD_VERSION=$(curl -sL https://api.github.com/repos/lsd-rs/lsd/releases/latest | grep '"tag_name":' | sed -E 's/.*"v([^"]+)".*/\1/')
curl -LO "https://github.com/lsd-rs/lsd/releases/download/v${LSD_VERSION}/lsd-musl_${LSD_VERSION}_amd64.deb"
sudo dpkg -i "lsd-musl_${LSD_VERSION}_amd64.deb"
rm "lsd-musl_${LSD_VERSION}_amd64.deb"

echo "5. Installing Node.js & npm (Latest LTS)..."
# Setting up NodeSource for the latest LTS version
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt install -y nodejs

echo "6. Changing Default Shell to Zsh..."
if [ "$SHELL" != "/usr/bin/zsh" ]; then
    sudo chsh -s $(which zsh) $USER
fi

echo "7. Installing Oh My Zsh..."
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    # Unattended install so the script doesn't pause to enter zsh immediately
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

echo "8. Installing Zsh Plugins (zsh-autosuggestions, zsh-syntax-highlighting)..."
ZSH_CUSTOM=${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}
if [ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
fi
if [ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
fi

echo "9. Configuring ~/.zshrc..."

# Find the zshrc file and backup
if [ -f "$HOME/.zshrc" ]; then
    cp "$HOME/.zshrc" "$HOME/.zshrc.backup-setup"
fi

cat << 'EOF' > "$HOME/.zshrc"
# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Random Theme
ZSH_THEME="random"

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Productivity Aliases
alias att="sudo apt update && sudo apt upgrade -y"
alias ls="lsd"
alias ll="lsd -l"
alias tree="lsd --tree"
alias cat="batcat"

# Initialize zoxide
eval "$(zoxide init zsh)"

# Run fastfetch to show system info when terminal opens
fastfetch
EOF

echo "=========================================================="
echo " Setup Complete! "
echo " Please log out and log back in, or restart your terminal,"
echo " to start using Zsh with Oh My Zsh and your new tools."
echo "=========================================================="
