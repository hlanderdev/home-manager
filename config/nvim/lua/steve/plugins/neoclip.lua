return {
	"AckslD/nvim-neoclip.lua",
	dependencies = {
		{ "nvim-lua/plenary.nvim", module="sqlite" },
		{ "nvim-telescope/telescope.nvim" },
	},
	config = function ()
		require("neoclip").setup()
	end,
}

