{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    plugins = with pkgs.vimPlugins; [
      comment-nvim
			transparent-nvim
      tokyonight-nvim
      nvim-colorizer-lua
      lualine-nvim
      nvim-web-devicons
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
			set cmdheight=0
      syntax on
      set clipboard=unnamedplus
      colorscheme tokyonight
			lua require('colorizer').setup()
      lua require('lualine').setup() 
			'';
  };
}
