{ pkgs, ... }:
{
	services.avahi = {
		enable = true;
		nssmdns4 = true;
		openFirewall = true;
	};

	services.printing = {
		enable = true;
		drivers = with pkgs; [
			cups-filters
			cups-browsed
			mfcl3770cdwlpr
			mfcl3770cdwcupswrapper
			brgenml1lpr
			brgenml1cupswrapper
		];
	};

	# hardware.printers = {
	# 	ensurePrinters = [
	# 		{
	# 			name = "Brother_MFC_L3770CDW";
	# 			location = "Home";
	# 			deviceUri = "ipp://BRW8CC84B717AEC.local/ipp/print";
	# 			model = "everywhere";
	# 			# model = "brother_mfcl3770cdw_printer_en.ppd";
	# 			# model = "brother-BrGenML1-cups-en.ppd";
	# 		}
	# 	];
	# 	ensureDefaultPrinter = "Brother_MFC_L3770CDW";
	# };
}
