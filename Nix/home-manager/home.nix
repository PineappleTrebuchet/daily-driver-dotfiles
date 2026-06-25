{ config, pkgs, lib, ... }: {
	imports = [
		./zsh.nix
		./vscodium.nix
		./nvim.nix
	];

	nixpkgs.config.allowUnfree = true;

	home = {
		username = "cocotreb";
		homeDirectory = "/home/cocotreb";
		stateVersion = "26.11";

		pointerCursor = {
			name = "phinger-cursors-dark";
			package = pkgs.phinger-cursors;
			gtk.enable = true;
			x11.enable = true;
			size = 24;
		};

		# TODO: add gtk theme here
		# qogir-theme
		# qogir-icon-theme
	};
		gtk = {
			enable = true;
			theme = {
				name = "Qogir-dark";
				package = pkgs.qogir-theme;
			};
			iconTheme = {
				name = "Qogir-dark";
				package = pkgs.qogir-icon-theme;
			};
		};
}
