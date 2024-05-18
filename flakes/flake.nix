{
	description = "My flake templates";

	outputs = { self, ... }: {
		templates = {
			bevy = {
				path = ./bevy/basic;
				description = "Bevy";
			};
			bevy2d = {
				path = ./bevy/basic;
				description = "Bevy 2d";
			};
		};
	};
}

