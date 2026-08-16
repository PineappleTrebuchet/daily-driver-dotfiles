{ pkgs, pkgs-stable, ... }:
{
  programs.steam.enable = true;

  environment.systemPackages =
    with pkgs;
    [
      protonup-rs
      prismlauncher
    ]
    ++ (with pkgs-stable; [
      # mindustry-wayland
      # pcsx2
    ]);
}
