# modules/home-manager/packages.nix

{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  programs.discord.enable = true;

  home.packages = with pkgs; [
	telegram-desktop
	vencord
  ];
}
