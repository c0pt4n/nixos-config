# modules/nixos/gaming.nix

{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  programs = {
	steam.enable = true;
	steam.protontricks.enable = true;
	gamemode.enable = true;
  };

  environment.systemPackages = with pkgs; [
    protonplus
  ];
}
