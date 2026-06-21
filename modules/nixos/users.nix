# modules/nixos/users.nix

{ config, pkgs, ... }:

{
  users.users.omar = {
    isNormalUser = true;
    extraGroups = [ 
      "networkmanager"
      "wheel"
    ];
    shell = pkgs.zsh;
  };
}
