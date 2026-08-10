{ pkgs, ... }:
{
  imports = [
    ./gui.nix
    ./nixvim/main.nix
    ./zsh.nix
  ];

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

  programs.git = {
    enable = true;

    includes = [
      {
        condition = "gitdir:~/Projects/personal/";
        path = "~/Projects/personal/.gitconfig-personal";
      }
      {
        condition = "gitdir:~/Projects/professional/";
        path = "~/Projects/work/.gitconfig-professional";
      }
    ];

    lfs.enable = true;

    settings = {
      credential."https://github.com".helper = "!gh auth git-credential";
      credential."https://gist.github.com".helper = "!gh auth git-credential";
    };
  };
}
