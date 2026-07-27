{ pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		arduino-cli
		bat
		btop
		cmatrix
		dysk
		fastfetch
		fzf
		git
		github-cli
		kittysay
		nvtopPackages.intel
		pipes
		tmux
		tokei
		tty-solitaire
		vim
		wine
		yazi
		yt-dlp
	];
}
