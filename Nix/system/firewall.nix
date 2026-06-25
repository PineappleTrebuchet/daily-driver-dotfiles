{ pkgs, ... }:

{
	networking.firewall = {
		enable = true;
		allowedTCPPorts = [ ];
		allowedUDPPorts = [ ];
    logRefusedConnections = true;

		allowedTCPPortRanges = [
			{ from = 1714; to = 1764; }
		];
		allowedUDPPortRanges = [
			{ from = 1714; to = 1764; }
		];
	};
}

