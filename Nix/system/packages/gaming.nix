{ pkgs, pkgs-stable, ... }:
{
  programs.steam.enable = true;

  environment.systemPackages =
    with pkgs;
    [
      pcsx2
      protonup-rs
      prismlauncher
    ]
    ++ (with pkgs-stable; [
      # TODO: move back to unstable whenever they fix ts
      mindustry-wayland
    ]);
}
