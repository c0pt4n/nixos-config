# modules/home-manager/packages.nix

{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  programs.discord.enable = true;

  programs.bat = {
	enable = true;
	config = {
	  tabs = "4";
	  theme = "Nord";
	};
  };

  home.packages = with pkgs; [
	telegram-desktop
	vencord
  ];
}
