{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    arduino-cli
    bat
    btop
    cmatrix
    dysk
    fastfetch
    fzf
    github-cli
    kittysay
    nvd # nix version diff
    nvtopPackages.intel
    pipes
    tmux
    tokei # code summary
    tty-solitaire
    neovim
    wine
    yazi
    yt-dlp
  ];
}
