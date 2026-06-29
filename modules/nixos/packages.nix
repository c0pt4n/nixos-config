# modules/nixos/packages.nix

{ pkgs, ... }:

{
  programs.firefox.enable = true;
  programs.zsh.enable = true;

  environment.systemPackages = with pkgs; [
	# git
	git
	gh
	git-filter-repo
	git-lfs
	jujutsu

	# archives
	zip
	xz
	unzip
	p7zip
	gnutar

	# coreutils
	file
	which
	tree
	gnused
	gawk
	pass
	passExtensions.pass-otp

	# productivity
    fastfetch
	btop
	tmux
	tmate
	bat
	neovim
	ripgrep
	fzf

	# misc
	jq
    wget
	zstd
  ];
}
