{config, unstable, pkgs, ...}:

let
    unstable = import <nixpkgs-unstable> {config = {allowUnfree = true; }; };
in
{
    home.packages = with unstable; [
        (nerdfonts.override {fonts = ["JetBrainsMono"];})
            neovim ripgrep fd
    ];

    programs.zsh = import ./zsh/zsh.nix {};

    programs.alacritty = import ./alacritty/alacritty.nix pkgs;

    #programs.rofi = import ./rofi.nix pkgs;
}
