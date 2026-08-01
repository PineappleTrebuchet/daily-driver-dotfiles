{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    autotiling
    fuzzel
    grim
    libnotify
    slurp
    swaylock-effects
    swaynotificationcenter
    waybar
    wev
    wl-clipboard
    wlogout
    swayosd
  ];

  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
  };
}
