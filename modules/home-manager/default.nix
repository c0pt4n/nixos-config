# modules/home-manager/default.nix

{ pkgs, ... }:

{
  imports = [
	./git.nix
	./home.nix
	./packages.nix
    ./shell.nix
  ];

  programs.home-manager.enable = true;

  home.packages = with pkgs; [
	mpv
  ];
}
