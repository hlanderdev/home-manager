{ config, pkgs, ... }:

{
	home.username = "steve";
	home.homeDirectory = "/home/steve";
	home.stateVersion = "23.11"; # Please read the comment before changing.
	programs.home-manager.enable = true;

	home.file = {
		".config" = {
			source = ./config;
			recursive = true;
		};
	};

	home.packages = with pkgs; [
		gimp
		neovim
		tmux
		xclip
	];
}

