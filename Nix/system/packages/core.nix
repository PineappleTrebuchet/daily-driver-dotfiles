{ pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		alacritty
		cargo
		feh
		gcc
		glib # required to launch gtk apps with gapplication
		gnumake
		home-manager
		ntfs3g # NTFS support
		openjdk
		rustc
		unzip
		wget
    killall

		(python3.withPackages (python-pkgs: with python-pkgs; [
			requests
		]))
	];
}
