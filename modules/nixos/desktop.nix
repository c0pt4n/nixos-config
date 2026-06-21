# modules/nixos/desktop.nix

{ config, pkgs, ... }:

{
  # Enable NetworkManager
  networking.networkmanager.enable = true;
}
