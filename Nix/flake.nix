# TODO: switch back to unstable channel when the CVE is resolved
{
	description = "Personal configuration for desktop use";

	inputs = {
		# nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		nixpkgs.url = "github:nixos/nixpkgs/26.05";

		home-manager = {
			# url = "github:nix-community/home-manager";
			url = "github:nix-community/home-manager/release-26.05";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		nixvim = {
			url = "github:nix-community/nixvim";
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
