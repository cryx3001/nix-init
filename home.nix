{config, unstable, pkgs, ...}:

let
    unstable = import <nixos-unstable> {config = {allowUnfree = true; }; };
in
{
    home.packages = with pkgs; [
        (nerdfonts.override {fonts = ["JetBrainsMono"];})
        neovim
    ];
   
    programs.zsh = {
	    enable = true;
        oh-my-zsh = {
            enable = true;
            theme = "bira";
        };
        zplug = {
            enable = true;
            plugins = [
                { name = "zsh-users/zsh-autosuggestions";}
                { name = "zsh-users/zsh-syntax-highlighting";}
                { name = "zsh-users/zsh-completions";}
                { name = "wting/autojump";}
            ];
        };
    };
   
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
                program = "${pkgs.zsh}/bin/zsh";
            };
        };
    };
}
