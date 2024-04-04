vim.opt.number = true
vim.opt.relativenumber = true

--yaml cant use tabs wtf
vim.cmd("filetype plugin indent off")
vim.opt.tabstop = 3
vim.opt.shiftwidth = 3
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.list = true
vim.opt.listchars = {
	tab = "→ ",
	space = "·",
}

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.wrap = false

vim.opt.scrolloff = 8

vim.opt.updatetime = 50
vim.opt.mouse = ""
-- settings to consider
-- autochdir
-- spell
vim.opt.swapfile = false
