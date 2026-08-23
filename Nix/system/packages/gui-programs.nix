{ pkgs, inputs, ... }:

{

  programs.obs-studio.enable = true;

  environment.systemPackages =
    with pkgs;
    [
      blueman
      freetube
      gimp
      gnome-text-editor
      kdePackages.kdeconnect-kde
      kicad
      libreoffice-fresh
      networkmanagerapplet
      pavucontrol
      peazip
      qalculate-gtk
      spotify
      thunar
      vesktop
      vlc
    ]
    ++ [
      inputs.helium.defaultPackage.${pkgs.stdenv.hostPlatform.system}
    ];
}
