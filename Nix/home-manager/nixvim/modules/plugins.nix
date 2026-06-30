{ ... }:
{
	programs.nixvim = {
		plugins.lsp = {
			enable = true;
			servers = {
				arduino_language_server.enable = true;
				lua_ls.enable = true;
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
			yazi.enable = true;

			# Cmp
			cmp_luasnip.enable = true;
			cmp.enable = true;
			cmp-buffer.enable = true;
			cmp-path.enable = true;
			cmp-nvim-lsp.enable = true;
    };

		# configuration for cmp
		extraConfigLua = ''
			local cmp = require('cmp')

			cmp.setup({
				snippet = {
					expand = function(args)
						 require('luasnip').lsp_expand(args.body)
					end,
				},

				mapping = cmp.mapping.preset.insert({
					['<C-n>'] = cmp.mapping.select_next_item(),
					['<C-p>'] = cmp.mapping.select_prev_item(),
					['<Tab>'] = cmp.mapping.select_next_item(),
					['<S-Tab>'] = cmp.mapping.select_prev_item(),
					['<C-b>'] = cmp.mapping.scroll_docs(-4),
					['<C-f>'] = cmp.mapping.scroll_docs(4),
					['<C-Space>'] = cmp.mapping.complete(),
					['<Esc>'] = cmp.mapping.abort(),
					['<CR>'] = cmp.mapping.confirm({ select = true }),
				}),

				window = {
						-- completion = cmp.config.window.bordered(),
						-- documentation = cmp.config.window.bordered(),
				},

				sources = cmp.config.sources({
						{ name = 'nvim_lsp' },
						{ name = 'luasnip' },
				}, {
						{ name = 'buffer' },
						{ name = 'path' },
				}),
			})

			local capabilities = require('cmp_nvim_lsp').default_capabilities()
			local servers = {
				'clangd',
				'basedpyright',
				'nil_ls',
				'lua_ls',
				'arduino_language_server',
				'jdtls',
			}

			for _, server in ipairs(servers) do
				vim.lsp.config(server, {
					capabilities = capabilities,
				})
			end
		'';

		# BUG: this plugin breaks because it cannot find cmp
		# plugins.lazy = {
		# 		enable = true;
		# 		plugins = [{ name = "yuukiflow/Arduino-Nvim"; }];
		# };
	};
}
