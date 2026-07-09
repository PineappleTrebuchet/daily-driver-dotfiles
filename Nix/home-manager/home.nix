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
			gnome-weather
		];

		pointerCursor = {
			enable = true;
			name = "phinger-cursors-dark";
			package = pkgs.phinger-cursors;
			gtk.enable = true;
			x11.enable = true;
			size = 24;
		};

		# explicitly pin fuzzel menu entries
		file.".cache/fuzzel".text = lib.concatStringsSep "\n" [
			"waterfox.desktop|20000"
			"vesktop.desktop|19000"
			"thunar.desktop|18000"
			"steam.desktop|17000"
			"org.gnome.Weather.desktop|16000"
			"startcenter.desktop|15000"
			"spotify.desktop|14000"
			"org.pulseaudio.pavucontrol.desktop|13000"
			"nm-connection-editor.desktop|12000"
			"blueman-manager.desktop|11000"
			"org.kde.kdeconnect.app.desktop|10000"
			"PCSX2.desktop|9000"
			"gimp.desktop|8000"
			"qalculate-gtk.desktop|7000"
			"librewolf.desktop|6000"
			"com.obsproject.Studio.desktop|5000"
			"ipscan.desktop|4000"
			""
		];
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

  programs.git = {
    enable = true;
    settings.user = {
        name  = "CoconutTrebuchet";
        email = "72771141+PineappleTrebuchet@users.noreply.github.com";
        editor = "nvim";
        defaultBranch = "main";
    };
  };
}
