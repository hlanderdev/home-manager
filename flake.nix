{
	description = "Home Manager configuration of steve";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = { nixpkgs, home-manager, ... }:
		let
			system = "x86_64-linux";
			pkgs = nixpkgs.legacyPackages.${system};
		in {
			homeConfigurations."steve" = home-manager.lib.homeManagerConfiguration {
				inherit pkgs;

				modules = [ ./home.nix ];

				# Optionally use extraSpecialArgs
				# to pass through arguments to home.nix
		};
	};
}

