# modules/home-manager/default.nix

{ ... }:

{
  imports = [
	./git.nix
	./home.nix
    ./shell.nix
  ];

  programs.home-manager.enable = true;
}
