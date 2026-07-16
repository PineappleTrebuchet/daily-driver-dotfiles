{ pkgs, ... }:
{
	programs.steam.enable = true;

	environment.systemPackages = with pkgs; [
		mindustry-wayland
		pcsx2
		protonup-rs
	];
}
