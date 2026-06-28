# modules/nixos/gaming.nix

{ pkgs, ... }:

{
  programs = {
	steam.enable = true;
	steam.protontricks.enable = true;
	gamemode.enable = true;
  };

  environment.systemPackages = with pkgs; [
    protonplus
  ];
}
