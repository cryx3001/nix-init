{pkgs, ...}:

let
family_font = "JetBrainsMono Nerd Font Mono";
in
{
    enable = true;
    settings = {
        colors = import ./colors.nix {};

        font = {
            normal = {
                family = family_font;
                style = "Regular";
            };
            italic = {
                family = family_font;
                style = "Italic";
            };
            bold = {
                family = family_font;
                style = "Bold";
            };
            bold_italic = {
                family = family_font;
                style = "Bold Italic";
            };
        };
        shell = {
            program = "${pkgs.zsh}/bin/zsh";
        };
    };
}
