# modules/home-manager/mangowc/default.nix

{ config, ... }:

let
  dotfilesDir = "${config.home.homeDirectory}/.dotfiles";
in
{
  imports = [
	./foot.nix
	./fuzzel
	./waybar
  ];

  xdg.configFile."mango/config.conf".source = config.lib.file.mkOutOfStoreSymlink "${dotfilesDir}/modules/home-manager/mangowc/config.conf";

  services.wl-clip-persist = {
	enable = true;
  };

  services.cliphist = {
	enable = true;
	allowImages = true;
  };
}
