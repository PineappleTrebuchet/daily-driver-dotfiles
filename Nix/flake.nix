{
  description = "Personal configuration for desktop use";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/26.05";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim.url = "github:nix-community/nixvim";

    waterfox = {
      url = "github:realitymolder/waterfox-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      home-manager,
      nixpkgs,
      nixpkgs-stable,
      nixvim,
      ...
    }@inputs:
    let
      system = "x86_64-linux";

      pkgs-stable = import nixpkgs-stable {
        inherit system;
        config.allowUnfree = true;
      };

    in
    {
      nixosConfigurations.tpt14g5 = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = { inherit inputs pkgs-stable; };
        modules = [
          ./system/configuration.nix
        ];
      };

      homeConfigurations.cocotreb = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.${system};
        extraSpecialArgs = { inherit pkgs-stable; };
        modules = [
          ./home-manager/default.nix
          nixvim.homeModules.nixvim
        ];
      };
    };
}
