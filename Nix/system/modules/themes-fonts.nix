{ pkgs, ... }:

{
	fonts.packages = with pkgs; [
		nerd-fonts.hack
		nerd-fonts.geist-mono
		nerd-fonts.space-mono
		font-awesome
		notonoto
		noto-fonts
	];

	environment.systemPackages = with pkgs; [
	];
}
