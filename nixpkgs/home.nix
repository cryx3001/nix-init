{config, unstable, pkgs, ...}:

let
unstable = import <nixos-unstable> {config = {allowUnfree = true; }; };
in
{
    home.packages = with pkgs; [
        (nerdfonts.override {fonts = ["JetBrainsMono"];})
            neovim
    ];

    programs.zsh = import ./zsh/zsh.nix {};

    programs.alacritty = import ./alacritty/alacritty.nix pkgs;
}
