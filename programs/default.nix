{ config, pkgs, ... }:
{
	imports = [
#		./bash
		./foot
		./nvim
		./tmux
		./zellij
		./zsh
	];
}

