{
  description = "C0pt4n nixos config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = inputs@{ self, nixpkgs, home-manager, ... }: {
    nixosConfigurations.virtbox = nixpkgs.lib.nixosSystem {
      modules = [
		./modules
        ./hosts/virtbox
		home-manager.nixosModules.home-manager
      ];
      specialArgs = { inherit inputs; };
    };
  };
}
