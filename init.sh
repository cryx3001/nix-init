#!/bin/sh

echo "Creating / updating needed channel and preparing nvim config"
nix-channel --add https://nixos.org/channels/nixos-22.05 nixos-stable
nix-channel --update

nix-env -iA nixos-stable.home-manager

git clone https://github.com/cryx3001/nvim-config.git ~/.config/nvim
clone_fail="$?"

rm -rf ~/.config/nixpkgs
mkdir -p ~/.config/nixpkgs
cp -r ./nixpkgs/* ~/.config/nixpkgs/

echo "Installing home packages"
home-manager switch

if [ "$clone_fail" -ne "0" ]; then
    printf "\n\e[1;33mThe clone of the neovim config failed!\nIf the respository already exists, you should try to pull for the latest updates\n"
fi

