# modules/default.nix

{ inputs, outputs, ... }:

{
  imports = [ ./nixos ];
  #home-manager = {
  #  useGlobalPkgs = false;
  #  useUserPackages = true;
  #  backupFileExtension = "hm-backup";
  #  extraSpecialArgs = { inherit inputs outputs; };
  #  users = {
  #    omar = {
  #      imports = [ ./home-manager ];
  #    };
  #  };
  #};
}
