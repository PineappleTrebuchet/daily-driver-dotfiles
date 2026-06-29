{ ... }:
{
	programs.nixvim = {
		plugins.lsp = {
			enable = true;
			servers = {
				arduino_language_server.enable = true;
				nil_ls.enable = true;
				basedpyright.enable = true;
				clangd.enable = true;
				jdtls.enable = true;
			};
		};

    plugins = {
			# Look & Feel
    	web-devicons.enable = true;
    	bufferline.enable = true;
    	lualine.enable = true;
			comment.enable = true;
			gitsigns.enable = true;
			todo-comments.enable = true;
			colorizer.enable = true;
			render-markdown.enable = true;

			# Tools
			telescope.enable = true;
			treesitter.enable = true;
			diffview.enable = true;
			which-key.enable = true;
			cmp-nvim-ultisnips.enable = true;
			cmp.enable = true;
    };
	};
}
