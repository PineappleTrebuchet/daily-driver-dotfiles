{ config, pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		fuzzel
		waybar
		swaynotificationcenter
		wlogout
		swaylock-effects
		wl-clipboard
	];

	# programs.swaylock.enable = false;

	programs.sway = {
		enable = true;
		wrapperFeatures.gtk = true;
	};
}
