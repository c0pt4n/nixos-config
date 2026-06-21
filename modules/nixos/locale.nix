# nixos/modules/locale.nix

{ config, pkgs, ... }:

{
  # Set your time zone.
  time.timeZone = "Africa/Cairo";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
}
