{
  description = "C0pt4n nixos config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
	nixpkgs-stable.url = "github:NixOS/nixpkgs/nixos-26.05";
    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = inputs@{ self, nixpkgs, nixpkgs-stable, home-manager, ... }:
  let
	system = "x86_64-linux";
	stable = import nixpkgs-stable {
	  inherit system;
	  config.allowUnfree = nixpkgs-stable.lib.mkDefault true;
	};
  in {
    nixosConfigurations.virtbox = nixpkgs.lib.nixosSystem {
      modules = [
		./modules
        ./hosts/virtbox
		home-manager.nixosModules.home-manager
      ];
      specialArgs = { inherit inputs stable; };
	};
  };
}
