{ pkgs, inputs, ... }:

{
	programs.steam.enable = true;
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
