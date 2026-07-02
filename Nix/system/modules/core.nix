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

		(python3.withPackages (python-pkgs: with python-pkgs; [
			requests
		]))
	];
	nixpkgs.config.permittedInsecurePackages = [
		"pnpm-10.29.2"
	];
}
