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
			render-markdown.enable = true;
			# statuscol.enable = true;
			colorizer = {
				enable = true;
				settings.user_default_options.names = false;
			};
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
			nvim-tree.enable = true;
    };

		extraConfigLua = ''
			-- initalize nvim-navic
			vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"

			-- quit nvim-tree if it's the last buffer open
			-- by beauwilliams
			vim.api.nvim_create_autocmd("BufEnter", {
				group = vim.api.nvim_create_augroup("NvimTreeClose", {clear = true}),
				pattern = "NvimTree_*",
				callback = function()
					local layout = vim.api.nvim_call_function("winlayout", {})
					if layout[1] == "leaf" and vim.api.nvim_buf_get_option(vim.api.nvim_win_get_buf(layout[2]), "filetype") == "NvimTree" and layout[3] == nil then vim.cmd("confirm quit") end
				end
			})
		'';
	};
}
