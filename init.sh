echo "Creating / updating needed channel and preparing nvim config"
nix-channel --add https://nixos.org/channels/nixos-unstable nixos-unstable 
nix-channel --update & git clone https://github.com/cryx3001/nvim-config.git ~/.config/nvim

nix-env -iA nixos-unstable.home-manager

mkdir -p ~/.config/nixpkgs
cp ./home.nix ~/.config/nixpkgs/

echo "Installing home packages"
home-manager switch
