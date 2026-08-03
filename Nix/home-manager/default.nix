{ pkgs, ... }:
{
  imports = [
    ./gui.nix
    ./nixvim/main.nix
    ./zsh.nix
  ];

  nixpkgs.config.allowUnfree = true;

  home = {
    username = "cocotreb";
    homeDirectory = "/home/cocotreb";
    stateVersion = "26.11";
    # stateVersion = "26.05";

    packages = with pkgs; [
      gnome-weather
      ungoogled-chromium
      krita
    ];
  };

  programs.librewolf = {
    enable = true;
    settings = {
      "browser.privatebrowsing.autostart" = true;
      "middlemouse.paste" = false;
      "general.autoScroll" = true;
    };
  };

  xdg.userDirs = {
    enable = true;
    createDirectories = true;
  };
}
