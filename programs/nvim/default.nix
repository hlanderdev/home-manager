{ config, pkgs, ... }:
{
	home.packages = with pkgs; [
		clang
		go
		neovim
		nodejs
		nerdfonts
	];

	home.file.".config/nvim" = {
		source = ./nvim;
		recursive = true;
	};
}

