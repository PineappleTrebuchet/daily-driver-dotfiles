{ pkgs, ... }: {
	imports = [
		./zsh.nix
		./nixvim/main.nix
	];

	nixpkgs.config.allowUnfree = true;

	home = {
		username = "cocotreb";
		homeDirectory = "/home/cocotreb";
		stateVersion = "26.11";

		packages = with pkgs; [
			gnome-weather
		];

		pointerCursor = {
			name = "phinger-cursors-dark";
			package = pkgs.phinger-cursors;
			gtk.enable = true;
			x11.enable = true;
			size = 24;
		};
	};
		gtk = {
			enable = true;
			theme = {
				name = "Qogir-Dark";
				package = pkgs.qogir-theme;
			};
			iconTheme = {
				name = "Qogir-Dark";
				package = pkgs.qogir-icon-theme;
			};
		};

		# User directories
		xdg.userDirs = {
			enable = true;
			createDirectories = true;
		};		
}
