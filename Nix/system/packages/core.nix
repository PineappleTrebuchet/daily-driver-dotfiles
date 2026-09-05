{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    alacritty
    cargo
    doas
    feh
    gcc
    git
    glib # required to launch gtk apps with gapplication
    gnumake
    home-manager
    killall
    nixfmt
    ntfs3g # NTFS support
    openjdk
    rustc
    unzip
    wget

    (python3.withPackages (
      python-pkgs: with python-pkgs; [
        requests
      ]
    ))
  ];
}
