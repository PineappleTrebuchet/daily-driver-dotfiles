{ pkgs, ... }:

{
  environment.systemPackages =
    with pkgs;
    [
      # useful stuff
      bat
      btop
      dysk
      fzf
      github-cli
      neovim
      nvd # nix version diff
      nvtopPackages.intel
      tldr
      tmux
      # tokei # code summary
      tree
      wine
      yazi
      yt-dlp
    ]
    ++ [
      # shenanigans
      activate-linux
      cmatrix
      fastfetch
      kittysay
      pipes
      tty-solitaire
    ];
}
