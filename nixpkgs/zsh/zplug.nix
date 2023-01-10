{...}:

let
unstable = import <nixos-unstable> {config = {allowUnfree = true; }; };
in
{
    enable = true;
    plugins = [
        { name = "zsh-users/zsh-autosuggestions";}
        { name = "zsh-users/zsh-syntax-highlighting";}
        { name = "zsh-users/zsh-completions";}
        { name = "wting/autojump";}
    ];
}
