{ pkgs, ... }:
{
	# plugin dependencies
	home.packages = with pkgs; [
		fd
		cargo
		luaPackages.tree-sitter-cli
	];

	programs.nixvim = {
		plugins.lsp = {
			enable = true;
			servers = {
				lua_ls.enable = true;
				nil_ls.enable = true;
				basedpyright.enable = true;
				clangd.enable = true;
				jdtls.enable = true;
			};
		};

		# look & feel
    plugins = {
    	web-devicons.enable = true;
			gitsigns.enable = true;
			todo-comments.enable = true;
			colorizer.enable = true;
			render-markdown.enable = true;
			statuscol.enable = true;
			navic = {
				enable = true;
				settings.lsp.auto_attach = true;
				settings.separator = "  ";
			};
    	bufferline = {
				enable = true;
				settings.options.separator_style = "slant";
			};
    	lualine = {
				enable = true;
				settings = {
					sections.lualine_b = [ "filetype" ];
					sections.lualine_c = [ "branch" "diff" "diagnostics" "searchcount" ];
					sections.lualine_x = [ "lsp_status" ];
					options.component_separators = { left = ""; right = ""; };
					options.section_separators = { left = ""; right = ""; };
				};
			};
		};

		# tools
		plugins = {
			nvim-autopairs.enable = true;
			comment.enable = true;
			telescope.enable = true;
			treesitter.enable = true;
			diffview.enable = true;
			which-key.enable = true;
			yazi.enable = true;
			toggleterm.enable = true;
			neo-tree = {
				enable = true;
				settings.close_if_last_window = true;
				settings.window.width = 30;
			};
    };

		extraConfigLua = ''
			vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"
		'';
	};
}
