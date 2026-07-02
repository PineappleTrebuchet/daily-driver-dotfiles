{ pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		pavucontrol
		steam
		floorp-bin
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
	];
}
