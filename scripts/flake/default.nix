{ config, pkgs, ... }:
let
	myflakes = ../../flakes;

	# packages
	jq  = "${pkgs.jq}/bin/jq";
	fzf = "${pkgs.fzf}/bin/fzf";

in
{
	home.packages = [(pkgs.writeShellScriptBin "flake" ''
		choice=$(nix flake show --json ${myflakes} | ${jq} -r '.templates | keys.[]' | ${fzf})
		if [ $? -ne 0 ]; then
			exit
		fi
		nix flake init -t ${myflakes}#$choice
	'')];
}


