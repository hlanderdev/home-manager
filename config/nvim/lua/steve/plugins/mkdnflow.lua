return {
	"jakewvincent/mkdnflow.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function ()
		require("mkdnflow").setup({
			mappings = {
				MkdnEnter = {{"i", "n", "v"}, "<CR>"},
			},
			perspective = {
				priority = "root",
				root_tell = ".git",
			},
		})
	end,
}

