# modules/nixos/gaming.nix

{ pkgs, ... }:

{
  programs = {
	steam.enable = true;
	steam.protontricks = true;
	gamemode.enable = true;
  };

  environment.systemPackages = with pkgs; [
    protonplus
  ];
}
