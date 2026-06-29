# modules/home-manager/neovim.nix

{ config, ... }:

let
  dotfilesDir = "${config.home.homeDirectory}/.dotfiles";
in
{
  xdg.configFile."nvim".source = config.lib.file.mkOutOfStoreSymlink "${dotfilesDir}/modules/home-manager/neovim/nvim";
}
