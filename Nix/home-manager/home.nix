{ pkgs, lib, ... }: {
	imports = [
		./zsh.nix
		./nixvim/main.nix
	];

	nixpkgs.config.allowUnfree = true;

	home = {
		username = "cocotreb";
		homeDirectory = "/home/cocotreb";
		stateVersion = "26.11";
		# stateVersion = "26.05";

		packages = with pkgs; [
			# gnome-weather
			librewolf
			ungoogled-chromium
		];

		pointerCursor = {
			enable = true;
			name = "phinger-cursors-dark";
			package = pkgs.phinger-cursors;
			gtk.enable = true;
			x11.enable = true;
			size = 24;
		};

		# Main wallpaper
		file."Pictures/Wallpapers/mluka.png".source = pkgs.fetchurl {
			url = "https://i.imgur.com/83dlM5y.png";
			hash = "sha256-TT7YIGjuBHA57aHEJ65EhhiqcjXVQbdW1nZ/1Ai/dNw=";
		};
		# Swaylock wallpaper
		file."Pictures/Wallpapers/hmiku.png".source = pkgs.fetchurl {
			url = "https://i.imgur.com/iQNsuIC.png";
			hash = "sha256-ACldC3Hlg8jtWG3pc0D6UJF7FiWVl95bhhsrM0OVqcc=";
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
		font = {
			name = "Adwaita Sans 11";
		};
	};

	xdg.userDirs = {
		enable = true;
		createDirectories = true;
	};		

	# explicitly pin fuzzel menu entries
	home.file.".cache/fuzzel".text = lib.concatStringsSep "\n" [
		"waterfox.desktop|20000"
		"vesktop.desktop|19000"
		"thunar.desktop|18000"
		"steam.desktop|17000"
		"blueman-manager.desktop|16000"
		"startcenter.desktop|15000"
		"org.kde.kdeconnect.app.desktop|14000"
		"spotify.desktop|13000"
		"org.kicad.kicad.desktop|12000"
		"org.pulseaudio.pavucontrol.desktop|11000"
		"nm-connection-editor.desktop|10000"
		# "blueman-manager.desktop|9000"
		"PCSX2.desktop|9000"
		"gimp.desktop|8000"
		"qalculate-gtk.desktop|7000"
		"librewolf.desktop|6000"
		"com.obsproject.Studio.desktop|5000"
		"ipscan.desktop|4000"
		"chromium-browser.desktop|3000"
		""
	];
}
