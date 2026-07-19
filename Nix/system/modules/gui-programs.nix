{ pkgs, inputs, ... }:

{

	programs.obs-studio.enable = true;

	environment.systemPackages = with pkgs; [
		pavucontrol
		vesktop
		spotify
		vlc
    libreoffice-fresh
		kdePackages.kdeconnect-kde
		thunar
		blueman
		networkmanagerapplet
		qalculate-gtk
		gimp
		angryipscanner
		kicad
		arduino-ide
	] ++ [
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
