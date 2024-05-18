{ config, pkgs, ... }:
{
	programs.foot = {
		enable = true;
		server.enable = true;
		settings = {
			main = {
				shell = "${pkgs.zsh}/bin/zsh";
				font = "DroidSansM Nerd Font Mono:size=12";
			};
		};
	};
}

