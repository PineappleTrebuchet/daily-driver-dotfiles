{
	description = "Personal configuration for desktop use";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		nixvim = {
			url = "github:nix-community/nixvim";
			# inputs.nixpkgs.follows = "nixpkgs";
		};

	};

	outputs = {nixpkgs, home-manager, nixvim, ... }: 
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
			modules = [
				nixvim.homeModules.nixvim
				./home-manager/home.nix
			];
		};
	};
}
