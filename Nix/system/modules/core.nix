{ pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
    killall
		python3
		home-manager
		openjdk
		ntfs3g # NTFS support
		gcc
		gnumake
		unzip
		wget
	];
}
