vim.g.mapleader = " "

vim.keymap.set("x", "p", [["_dP"]], { desc="Paste over selection without losing yanked text" })

vim.keymap.set( {"n", "v"}, "<leader>d", [["_d"]], {desc="Delete without yanking"} )

vim.keymap.set("n", "<C-c>", ":nohl<CR>", {desc="Clear search highlight", silent=true})

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc="Moves selected lines down"})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc="Moves selected lines up"})

vim.keymap.set("v", "<", "<gv", {desc="Unindent and keep selectec"})
vim.keymap.set("v", ">", ">gv", {desc="Indent and keep selectec"})

vim.keymap.set("n", "J", "mzJ`z", {desc="Join lines without moving cursor"})

vim.keymap.set("n", "<C-d>", "<C-d>zz", {desc="Mode DOWN in buffer with cursor centered"})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {desc="Mode UP in buffer with cursor centered"})

vim.keymap.set("n", "n", "nzzzv", {desc="NEXT search result with cursor centered"})
vim.keymap.set("n", "N", "Nzzzv", {desc="PREVIOUS search result with cursor centered"})

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], {desc="Replace word cursor"})

vim.keymap.set("n", "<leader>re", "<cmd>restart<cr>", {desc="Restart NeoVim (:restart)"})

vim.keymap.set("n", "<leader>u", function()
    vim.cmd.packadd("nvim.undotree")
    require("undotree").open()
end, {desc="Toggle builtin UndoTree"})

