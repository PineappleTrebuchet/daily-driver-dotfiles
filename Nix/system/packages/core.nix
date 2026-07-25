{ pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		alacritty
    killall
		home-manager
		openjdk
		ntfs3g # NTFS support
		gcc
		gnumake
		unzip
		wget
		feh
		rustc
		glib # required to launch gtk apps with gapplication

		(python3.withPackages (python-pkgs: with python-pkgs; [
			requests
		]))

	];
}
