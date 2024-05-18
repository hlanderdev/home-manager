{ config, pkgs, ... }:
{
	home.packages = with pkgs; [
		zellij
	];

	home.file.".config/zellij" = {
		source = ./zellij;
		recursive = true;
	};
}

