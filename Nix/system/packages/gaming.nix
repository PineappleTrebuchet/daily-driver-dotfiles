{ pkgs, pkgs-stable, ... }:
{
  programs.steam.enable = true;

  environment.systemPackages = with pkgs; [
    protonup-rs
    prismlauncher
    mindustry-wayland
    pcsx2
  ];
}
