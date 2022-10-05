{...}:

let
unstable = import <nixos-unstable> {config = {allowUnfree = true; }; };
in
{
    enable = true;
    theme = "bira";
    plugins = ["colored-man-pages"];
}
