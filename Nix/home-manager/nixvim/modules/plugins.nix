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
			cmp-buffer.enable = true;
			cmp-path.enable = true;
    };

		# BUG: loading this plugin fails because of missing CMP dependency (?)

		# plugins.lazy = {
		# 		enable = true;
		# 		plugins = [{ name = "yuukiflow/Arduino-Nvim"; }];
		# };
	};
}
