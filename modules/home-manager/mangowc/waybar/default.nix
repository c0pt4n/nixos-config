# modules/home-manager/mangowc/waybar/default.nix

{ config, ... }:

let
  dotfilesDir = "${config.home.homeDirectory}/.dotfiles";
in
{
  xdg.configFile."waybar/config.jsonc".source =
    config.lib.file.mkOutOfStoreSymlink "${dotfilesDir}/modules/home-manager/mangowc/waybar/config.jsonc";

  xdg.configFile."waybar/style.css".source =
    config.lib.file.mkOutOfStoreSymlink "${dotfilesDir}/modules/home-manager/mangowc/waybar/style.css";

  xdg.configFile."waybar/scripts".source =
    config.lib.file.mkOutOfStoreSymlink "${dotfilesDir}/modules/home-manager/mangowc/waybar/scripts";
}
