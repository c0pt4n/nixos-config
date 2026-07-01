# modules/home-manager/mangowc/fuzzel/default.nix

{ config, ... }:

let
  dotfilesDir = "${config.home.homeDirectory}/.dotfiles";
in
{
  xdg.configFile."fuzzel/fuzzel.ini".source =
    config.lib.file.mkOutOfStoreSymlink "${dotfilesDir}/modules/home-manager/mangowc/fuzzel/fuzzel.ini";
}
