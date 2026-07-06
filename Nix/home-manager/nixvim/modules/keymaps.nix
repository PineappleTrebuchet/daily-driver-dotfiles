{ ... }:
{
	programs.nixvim.globals.mapleader = " ";
	programs.nixvim.keymaps = [
		# INFO: Telescope keybinds
		{
			mode = "n";
			action = "<cmd>Telescope<CR>";
			key = "<leader>ft";
		}
		{
			mode = "n";
			action = "<cmd>Telescope live_grep<CR>";
			key = "<leader>fl";
		}
		{
			mode = "n";
			action = "<cmd>Telescope find_files<CR>";
			key = "<leader>ff";
		}
		{
			mode = "n";
			action = "<cmd>Telescope git_commits<CR>";
			key = "<leader>fg";
		}
		{
			mode = "n";
			action = "<cmd>Telescope oldfiles<CR>";
			key = "<leader>fo";
		}
		{
			mode = "n";
			action = "<cmd>Telescope colorscheme<CR>";
			key = "<leader>fc";
		}
		{
			mode = "n";
			action = "<cmd>Telescope man_pages<CR>";
			key = "<leader>fm";
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
		{
			mode = "n";
			action = "<cmd>Neotree<CR>";
			key = "<leader>n";
		}
		{
			mode = "n";
			action = "<cmd>ToggleTerm<CR>";
			key = "<leader>t";
		}
		{
			mode = "t";
			action = "<C-\\><C-n>";
			key = "<Esc>";
		}
		{
			mode = "n";
			action = "<cmd>DiffviewOpen<CR>";
			key = "<leader>d";
		}
	];
}
