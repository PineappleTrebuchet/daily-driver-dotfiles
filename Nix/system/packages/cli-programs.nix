{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    bat
    btop
    cmatrix
    dysk
    fastfetch
    fzf
    github-cli
    kittysay
    neovim
    nvd # nix version diff
    nvtopPackages.intel
    pipes
    tmux
    # tokei # code summary
    tree
    tty-solitaire
    wine
    yazi
    yt-dlp
  ];
}
