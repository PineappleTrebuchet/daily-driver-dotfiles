{
	description = "Personal KDE configuration";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = {nixpkgs, home-manager, ... }: 
	let
		system = "x86_64-linux";
	in {
		nixosConfigurations.tpt14g5 = nixpkgs.lib.nixosSystem {
			inherit system;
			modules = [
				./system/configuration.nix
			];
		};

		homeConfigurations.cocotreb = home-manager.lib.homeManagerConfiguration {
			pkgs = nixpkgs.legacyPackages.${system};
			modules = [ ./home-manager/home.nix ];
		};
	};
}
