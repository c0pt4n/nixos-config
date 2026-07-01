# modules/nixos/desktop.nix

{ pkgs, ... }:

{
  # Enable NetworkManager
  networking.networkmanager.enable = true;

  programs.mangowc = {
	enable = true;
  };

  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  services.displayManager.ly = {
	enable = true;
	x11Support = false;
	settings = {
	  animation = "matrix";
	};
  };

  security.polkit.enable = true;
  services.gnome.gnome-keyring.enable = true;
  security.pam.services.swaylock = { };

  # Enable udisks2 service
  services.udisks2.enable = true;

  environment.systemPackages = with pkgs; [
	foot
	fuzzel
	waybar
	mako
	bluetui
	swayidle
	wl-clipboard
	waylock
	wbg
  ];
}
