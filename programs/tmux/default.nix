{ config, pkgs, ... }:
let
	clip = "${pkgs.wl-clipboard}/bin/wl-copy";
in
{
	programs.tmux = {
		enable = true;
		baseIndex = 1;
		keyMode = "vi";
		terminal = "screen-256color";
		plugins = with pkgs.tmuxPlugins; [
			gruvbox
			vim-tmux-navigator
		];
		extraConfig = ''
			bind -T copy-mode-vi y send-keys -X copy-pipe-and-cancel "${clip}"
		'';
	};
}

