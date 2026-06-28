# modules/home-manager/shell.nix

{ ... }:

{
  programs.starship = {
	enable = true;
  };

  programs.zsh = {
	enable = true;

	autocd = true;
	dotDir = ".config/zsh";
	autosuggestion.enable = true;
	autoCompletion.enable = true;
	syntaxHighlighting.enable = true;
    history.size = 10000;
	initContent = ''
	  eval "$(starship init zsh)"
    '';
  };
}
