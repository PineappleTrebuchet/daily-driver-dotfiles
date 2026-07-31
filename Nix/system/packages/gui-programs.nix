{ pkgs, inputs, ... }:

{

	programs.obs-studio.enable = true;

	environment.systemPackages = with pkgs; [
		angryipscanner
		arduino-ide
		blueman
		freetube
		gimp
		kdePackages.kdeconnect-kde
		kicad
		networkmanagerapplet
		pavucontrol
		qalculate-gtk
		spotify
		thunar
		vesktop
		vlc
    libreoffice-fresh
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
