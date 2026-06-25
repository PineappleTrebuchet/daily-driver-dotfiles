{ config, pkgs, ... }:

{
	programs.vscodium = {
		enable = true;
		package = pkgs.vscodium;
		profiles.default.extensions = with pkgs.vscode-extensions; [
			vscodevim.vim
      dracula-theme.theme-dracula
			oracle.oracle-java
			ms-python.python
			ms-vscode.cpptools
		];
	};
}
