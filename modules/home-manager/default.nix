# modules/home-manager/default.nix

{ config, pkgs, ... }:

{
  imports = [
	./fastfetch.nix
	./git.nix
	./home.nix
	./packages.nix
	./password-store.nix
    ./shell.nix
  ];

  programs.home-manager.enable = true;

  xdg.userDirs = {
	enable = true;

	createDirectories = true;
    desktop = "${config.home.homeDirectory}";
    documents = "${config.home.homeDirectory}/docs";
	download = "${config.home.homeDirectory}/dls";
    videos = "${config.home.homeDirectory}/vids";
    pictures = "${config.home.homeDirectory}/pics";
    music = "${config.home.homeDirectory}/music";
    publicShare = "${config.home.homeDirectory}/docs/share";
    templates = "${config.home.homeDirectory}/docs/templs";
  };

  home.packages = with pkgs; [
	mpv
  ];
}
