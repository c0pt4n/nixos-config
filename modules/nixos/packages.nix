# modules/nixos/packages.nix

{ pkgs, ... }:

{
  programs.zsh.enable = true;

  environment.systemPackages = with pkgs; [
	btop
	git
	bat
	git-filter-repo
	git-lfs
	gh
	ripgrep
    fastfetch
    firefox
    neovim
	jq
	jujutsu
	tmux
	tmate
    wget
	zstd
	pass
	passExtensions.pass-otp
  ];
}
