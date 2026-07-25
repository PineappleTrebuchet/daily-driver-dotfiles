{ pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		fuzzel
		waybar
		swaynotificationcenter
		wlogout
		swaylock-effects
		wl-clipboard
		autotiling
		grim
		slurp
		libnotify
	];

	programs.sway = {
		enable = true;
		wrapperFeatures.gtk = true;
	};
}
