local keymap = vim.keymap

-- Explore NetRW
vim.keymap.set("n", "<leader>ef", vim.cmd.Ex)

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")
