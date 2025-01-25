vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move highlighted text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor inplace when using 'J'
vim.keymap.set("n", "J", "mzj`z")
-- Keep cursor in middle when using page up and down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
--Keep cursor in middle when searching words
vim.keymap.set("n", "n", "nzzv")
vim.keymap.set("n", "N", "Nzzv")

-- Probably some possible projects quick mapping
vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)

-- When pasting on a word, you dont lose what you are pasting
vim.keymap.set("n", "<leader>p", "\"_dP")

-- Copying to clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")


-- Delete to void
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- When <C-v>, select lines, I, write text, you to hit esc to apply what you inserted to all lines
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Primeagen hates capital q and Ex mode aparently, not sure. CHECK IT OUT LATE!!
vim.keymap.set("n", "Q", "nop") 
-- Finds a file and creates a tmux session on it
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- format according to lsp
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

-- QuickFix List. CHECK OUT LATER!
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Get the selected word and substitute it on the whole file
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
-- Turn current file on executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = True })
