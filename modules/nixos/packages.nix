# modules/nixos/packages.nix

{ config, pkgs, ... }:

{
  programs.zsh.enable = true;

  environment.systemPackages = with pkgs; [
    fastfetch
    firefox
    neovim
    wget
  ];
}
