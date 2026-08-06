{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    autotiling
    fuzzel
    grim
    libnotify
    slurp
    swaybg
    swaylock-effects
    swaynotificationcenter
    swayosd
    waybar
    wev
    wl-clipboard
    wlogout
  ];

  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
  };
}
