{ ... }:
{
	programs.nixvim.plugins.statuscol = {
		enable = true;
		settings = {
			setopt = true;
			bt_ignore = null;
			clickhandlers = {
				FoldClose = "require('statuscol.builtin').foldclose_click";
				FoldOpen = "require('statuscol.builtin').foldopen_click";
				FoldOther = "require('statuscol.builtin').foldother_click";
				Lnum = "require('statuscol.builtin').lnum_click";
			};
			ft_ignore = null;
			relculright = true;
			segments = [
				{
					click = "v:lua.ScFa";
					text = [
						"%C"
					];
				}
				{
					click = "v:lua.ScSa";
					text = [
						"%s"
					];
				}
				{
					click = "v:lua.ScLa";
					condition = [
						true
						{
							__raw = "require('statuscol.builtin').not_empty";
						}
					];
					text = [
						{
							__raw = "require('statuscol.builtin').lnumfunc";
						}
						" "
					];
				}
			];
		};
	};
}
