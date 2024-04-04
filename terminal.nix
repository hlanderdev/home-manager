
{ config, pkgs, ... }:

{
	programs.bash.enable = true;

	home.shellAliases = {
		# Might be cool to make a nix function to be able to break up
		# args on separate lines
		hm = "home-manager";
		less = "less --tabs=4 --chop-long-lines";
		xclip = "xclip -selection clipboard";
	};

	home.sessionVariables = {
		EDITOR = "nvim";
	};
}

