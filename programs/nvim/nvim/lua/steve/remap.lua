vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- keybinds inpired by helix with my own twist
vim.keymap.set({"n", "v"}, "gh", "0", {})
vim.keymap.set({"n", "v"}, "gl", "$", {})
vim.keymap.set({"n", "v"}, "gj", "G", {})
vim.keymap.set({"n", "v"}, "gk", "gg", {})
-- not going to bother with first non blank character movement way easier to remember ghw

vim.keymap.set("i", "jj", "<Esc>", {})

