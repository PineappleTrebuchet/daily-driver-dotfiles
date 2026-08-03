{ pkgs, inputs, ... }:

{

  programs.obs-studio.enable = true;

  environment.systemPackages =
    with pkgs;
    [
      arduino-ide
      blueman
      freetube
      gimp
      kdePackages.kdeconnect-kde
      kicad
      libreoffice-fresh
      networkmanagerapplet
      pavucontrol
      qalculate-gtk
      spotify
      thunar
      vesktop
      vlc
    ]
    ++ [
      (inputs.waterfox.packages.${pkgs.stdenv.hostPlatform.system}.default.override {
        extraPolicies = {
          DisableAppUpdate = true;
          DisableTelemetry = true;
          OfferToSaveLogins = false;
          PasswordManagerEnabled = false;
        };
      })
    ];
}
