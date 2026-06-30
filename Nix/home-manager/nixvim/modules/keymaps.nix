{ ... }:
{
	programs.nixvim.globals.mapleader = " ";
	programs.nixvim.keymaps = [
		# INFO: Telescope keybinds
		{
			mode = "n";
			action = "<cmd>Telescope live_grep<CR>";
			key = "<leader>tl";
		}
		{
			mode = "n";
			action = "<cmd>Telescope find_files<CR>";
			key = "<leader>tf";
		}
		{
			mode = "n";
			action = "<cmd>Telescope git_commits<CR>";
			key = "<leader>tg";
		}
		{
			mode = "n";
			action = "<cmd>Telescope oldfiles<CR>";
			key = "<leader>to";
		}
		{
			mode = "n";
			action = "<cmd>Telescope colorscheme<CR>";
			key = "<leader>tc";
		}
		{
			mode = "n";
			action = "<cmd>Telescope man_pages<CR>";
			key = "<leader>tm";
		}
		# INFO: other keybinds
    {
			mode = "n";
			action = "<cmd>nohlsearch<CR>";
			key = "<Esc>";
    }
		{
			mode = "n";
			action = "<cmd>Yazi<CR>";
			key = "<leader>y";
		}
	];

		# INFO: cmp keybinds, which aren't working

		# programs.nixvim.plugins.cmp.settings.mapping = {
		# 	"<C-n>" = "cmp.mapping.select_next_item()";
		# 	"<C-p>" = "cmp.mapping.select_prev_item()";
		# 	"<Tab>" = "cmp.mapping.select_next_item()";
		# 	"<S-Tab>" = "cmp.mapping.select_prev_item()";
		# 	"<CR>" = "cmp.mapping.confirm({ select = true })";
		# 	"<Esc>" = "cmp.mapping.abort()";
		# 	"<C-b>" = "cmp.mapping.scroll_docs(-4)";
		# 	"<C-f>" = "cmp.mapping.scroll_docs(4)";
		# 	"<C-Space>" = "cmp.mapping.complete()";
		# };
}
