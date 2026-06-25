{ pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		btop
		cmatrix
		tmux
		fastfetch
		fzf
		yazi
		git
		neovim
		nvtopPackages.intel
		yt-dlp
	];
}
