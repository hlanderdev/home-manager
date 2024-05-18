return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	config = function()
		-- https://github.com/ellisonleao/gruvbox.nvim?tab=readme-ov-file#configuration
		require("gruvbox").setup()
		vim.cmd("colorscheme gruvbox")
	end,
};

