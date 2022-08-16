{config, unstable, pkgs, ...}:

let
	unstable = import <nixos-unstable> {config = {allowUnfree = true; }; };
in
{
	home.packages = with pkgs; [
		(nerdfonts.override {fonts = ["JetBrainsMono"];})
		neovim
	];
	programs.fish.enable = true;
    programs.alacritty = {
        enable = true;
        settings = {
            font = {
                normal = {
                    family = "JetBrainsMono Nerd Font Mono";
                    style = "Regular";
                };
                italic = {
                    family = "JetBrainsMono Nerd Font Mono";
                    style = "Italic";
                };
                bold = {
                    family = "JetBrainsMono Nerd Font Mono";
                    style = "Bold";
                };
                bold_italic = {
                    family = "JetBrainsMono Nerd Font Mono";
                    style = "Bold Italic";
                };
            };
            shell = {
                program = "${pkgs.fish}/bin/fish";
            };
        };
    };
}
