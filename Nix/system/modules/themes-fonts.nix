{ pkgs, ... }:

{
	fonts.packages = with pkgs; [
		nerd-fonts.hack
		nerd-fonts.geist-mono
		inter-regular
	];

	environment.systemPackages = with pkgs; [
	];
}
