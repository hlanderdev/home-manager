{
	description = "Home Manager configuration of steve";

	inputs = {
		# Specify the source of Home Manager and Nixpkgs.
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = { nixpkgs, home-manager, ... }:
		let
			system = "x86_64-linux";
			pkgs = import nixpkgs {
				system = system;
				config.allowUnfree = true;
				permittedInsecurePackages = [
					"electron-25.9.0"
				];
			};
		in {
			homeConfigurations = {
				steve = home-manager.lib.homeManagerConfiguration {
					inherit pkgs;

					modules = [
						./home.nix
						./terminal.nix
					];

					# Optionally use extraSpecialArgs
					# to pass through arguments to home.nix
				};
			};
		};
}

