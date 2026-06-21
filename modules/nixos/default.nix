# modules/nixos/default.nix

{ inputs, outputs, ... }:

{
  imports = [
    ./audio.nix
    ./bootloader.nix
    ./desktop.nix
    ./fs.nix
    ./locale.nix
    ./packages.nix
    ./users.nix
    ./zram.nix
  ];
}
