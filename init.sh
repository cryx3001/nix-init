echo "Creating / updating needed channel and preparing nvim config"
nix-channel --add https://nixos.org/channels/nixos-22.05 nixos-stable
nix-channel --update

nix-env -iA nixos-stable.home-manager

git clone https://github.com/cryx3001/nvim-config.git ~/.config/nvim &

rm -rf ~/.config/nixpkgs
mkdir -p ~/.config/nixpkgs
cp -r ./nixpkgs/* ~/.config/nixpkgs/

echo "Installing home packages"
home-manager switch
