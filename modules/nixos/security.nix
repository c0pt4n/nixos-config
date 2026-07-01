# modules/nixos/security.nix

{ pkgs, ... }:

{
  programs.wireshark.enable = true;
  users.users.omar.extraGroups = [ "wireshark" ];

  environment.systemPackages = with pkgs; [
	ffuf
	frida-tools
	netdiscover
	bloodhound-ce
	rusthound-ce
	smbmap
	metasploit
	masscan
	thc-hydra
	gobuster
	aircrack-ng
	nmap
	jadx
	apktool
	ghidra
	sqlmap
	subfinder
	hashcat
	hashcat-utils
  ];
}
