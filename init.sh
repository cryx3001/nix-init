echo "Creating & updating needed channel"
nix-channel --add https://nixos.org/channels/nixos-unstable nixos-unstable
nix-channel --update

nix-env -iA nixos-unstable.home-manager
git clone https://github.com/cryx3001/nvim-config.git ~/.config/nvim

mkdir -p ~/.config/nixpkgs
cp ./home.nix ~/.config/nixpkgs/

echo "Installing home packages"
home-manager switch

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
fish -c "omf install lambda"
