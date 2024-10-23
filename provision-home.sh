#!/bin/bash

sudo apt update
sudo apt install python3 python-is-python3 ipython3 pip \
	rclone git vim emacs alacritty zsh clangd clang-format \
	pass openvpn openresolv cmake cmake-format npm tmux \
	network-manager-openvpn-gnome gopls \
	zip htop virt-manager qemu-system
	-y 
git submodule update --init --recursive

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
cp 001-banner.txt ~/.emacs.d/core/banners/

sudo pip install python-lsp-server[all] --break-system-packages
sudo npm -g install eslint eslint-cli volar prettier

mkdir -p ~/.local/bin
curl -L https://github.com/rust-lang/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.local/bin/rust-analyzer
chmod +x ~/.local/bin/rust-analyzer

cp .alacritty.yml ~/
cp .tmux.conf ~/
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp -r oh-my-zsh-custom/* ~/.oh-my-zsh/custom/

git clone https://github.com/zsh-users/zaw.git ~/.oh-my-zsh/custom/plugins/zsh_zaw
cp .zshrc ~/
cp .p10k.zsh ~/

sudo wget "https://raw.githubusercontent.com/ProtonVPN/scripts/master/update-resolv-conf.sh" -O "/etc/openvpn/update-resolv-conf"
sudo chmod +x "/etc/openvpn/update-resolv-conf"

