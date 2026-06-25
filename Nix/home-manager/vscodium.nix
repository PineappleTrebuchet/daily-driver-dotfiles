{ config, pkgs, ... }:

{
	programs.vscodium = {
		enable = true;
		package = pkgs.vscodium;
		profiles.default.extensions = with pkgs.vscode-extensions; [
			vscodevim.vim
			oracle.oracle-java
			ms-python.python
			ms-vscode.cpptools
			jnoortheen.nix-ide
      catppuccin.catppuccin-vsc
			catppuccin.catppuccin-vsc-icons
		];
	};
}
