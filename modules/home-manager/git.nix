{ ... }:

{
  programs.git = {
	enable = true;
	lfs.enable = true;

	settings = {
	  user = {
		name = "Omar Mohamed";
		email = "omarcoptan9@gmail.com";
	  };
	  core = {
		editor = "nvim";
	  };
	  init = {
		defaultBranch = "main";
	  };
	  alias = {
		a = "add";
		co = "checkout";
		cm = "commit -m";
		st = "status -sb";
		br = "branch";
		cl = "clone";
		dt = "difftool";
		wt = "worktree";
		ls = "ls-files";
		tree = "ls-tree --full-tree -r HEAD";
		logg = "log --oneline --graph --decorate";
		undo = "reset --soft HEAD^";
	  };
	  diff = {
		tool = "nvimdiff";
	  };
	  difftool = {
		prompt = false;
	  };
	  rerere = {
		enabled = true;
	  };
	};
  };

  programs.delta = {
	enable = true;
	enableGitIntegration = true;

	options = {
	  tabs = 4;
	  side-by-side = false;
	  sytnax-theme = "Nord";
	  file-modified-label = "modified:";
	};
  };
}
