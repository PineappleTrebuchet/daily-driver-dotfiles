{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    plugins = with pkgs.vimPlugins; [
      dracula-nvim
      comment-nvim
			transparent-nvim
    ];

    extraConfig = ''
      set nu
      set relativenumber
      set shiftwidth=2
      set tabstop=2
      set noexpandtab
      set softtabstop=2
      set cursorline
      set nowrap
      set autoindent
			set ignorecase
			set smartcase
      syntax on
      set clipboard=unnamedplus
      colorscheme dracula
    '';
  };
}
