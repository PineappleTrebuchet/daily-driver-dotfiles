{ pkgs, inputs, ... }:

{
	# WARN: REMOVE THIS ASAP, this is for vesktop
	nixpkgs.config.permittedInsecurePackages = [
		"electron-40.10.5"
	];

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
