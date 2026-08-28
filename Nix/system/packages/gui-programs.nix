{
  pkgs,
  pkgs-stable,
  inputs,
  ...
}:
{
  programs.obs-studio.enable = true;

  environment.systemPackages =
    with pkgs;
    [
      blueman
      freetube
      gimp
      gnome-text-editor
      gnome-weather
      kdePackages.kdeconnect-kde
      kicad
      libreoffice-stable
      networkmanagerapplet
      pavucontrol
      peazip
      # vesktop
      pkgs-stable.vesktop
      qalculate-gtk
      spotify
      thunar
      vlc
    ]
    ++ [
      inputs.helium.defaultPackage.${pkgs.stdenv.hostPlatform.system}
    ];
}
