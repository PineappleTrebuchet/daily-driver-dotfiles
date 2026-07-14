{ pkgs, inputs, ... }:

{
	environment.systemPackages = with pkgs; [
		pavucontrol
		steam
		vesktop
		spotify
		vlc
    libreoffice-fresh
    obs-studio
		kdePackages.kdeconnect-kde
		thunar
		blueman
		networkmanagerapplet
		qalculate-gtk
		pcsx2
		gimp
		angryipscanner
		kicad
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
