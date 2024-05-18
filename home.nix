{ config, pkgs, ... }:
{
	home.username = "steve";
	home.homeDirectory = "/home/steve";
	home.stateVersion = "23.11";
	programs.home-manager.enable = true;

	fonts.fontconfig.enable = true;

	home.packages = with pkgs; [
		tmux
	];

	home.shellAliases = {
		# Might be cool to make a nix function to be able to break up
		# args on separate lines
		hms = "home-manager switch";
		less = "less --tabs=2 --chop-long-lines";
		edit = "$EDITOR";
	};

	home.sessionVariables = {
		EDITOR = "nvim";
	};

	imports = [
		./programs
		./scripts
	];
}

