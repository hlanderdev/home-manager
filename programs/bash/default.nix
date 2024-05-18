{ config, pkgs, ... }:
{
	programs.bash = {
		enable = true;
		initExtra = ''
			. ~/.nix-profile/etc/profile.d/hm-session-vars.sh
			PS1='\[\e[91m\] \W \\$ \[\e[0m\]'
		'';
	};
}

