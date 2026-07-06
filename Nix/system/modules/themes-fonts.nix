{ pkgs, ... }:

{
	fonts.packages = with pkgs; [
		nerd-fonts.hack
		nerd-fonts.space-mono
		font-awesome
		noto-fonts
		vista-fonts
		adwaita-fonts
	];

	environment.systemPackages = with pkgs; [
	];
}
