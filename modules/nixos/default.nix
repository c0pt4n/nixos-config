# modules/nixos/default.nix

{ ... }:

{
  imports = [
    ./audio.nix
    ./bootloader.nix
    ./desktop.nix
    ./fs.nix
	./gaming.nix
    ./locale.nix
    ./packages.nix
	./security.nix
    ./users.nix
    ./zram.nix
  ];
}
