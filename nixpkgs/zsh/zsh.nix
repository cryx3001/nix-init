{...}:

let
unstable = import <nixos-unstable> {config = {allowUnfree = true; }; };
in
{
    enable = true;
    shellAliases = {
        epita_gcc="gcc -Wall -Wextra -Werror -pedantic -std=c99";
        epita_auto_git="$AFS_DIR/nix-init/git_auto.sh";
    };
    oh-my-zsh = import ./oh-my-zsh.nix {};
    zplug = import ./zplug.nix {};
}
