# modules/nixos/security.nix

{ config, pkgs, ... }:

{
  programs.wireshark.enable = true;
  users.users.omar.extraGroups = [ "wireshark" ];

  environment.systemPackages = with pkgs; [
	frida-tools
	netdiscover
	bloodhound-ce
	rusthound-ce
	smbmap
	metasploit
	aircrack-ng
	jadx
	apktool
	ghidra
	hashcat
	hashcat-utils
  ];
}
