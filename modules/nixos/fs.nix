# modules/nixos/fs.nix

{ ... }:

{
  boot.tmp.useTmpfs = true;
  boot.tmp.cleanOnBoot = true;
}
