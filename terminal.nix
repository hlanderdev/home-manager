
{ config, pkgs, ... }:

{
	programs.bash.enable = true;

	home.shellAliases = {
		xclip = "xclip -selection clipboard";
	};

	home.sessionVariables = {
		EDITOR = "nvim";
	};
}

