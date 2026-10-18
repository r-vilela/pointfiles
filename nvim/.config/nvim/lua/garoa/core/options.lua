vim.g.netrw_banner = 0

-- Basic
vim.opt.number=true
vim.opt.relativenumber=true
vim.opt.cursorline=true
vim.opt.wrap=false
vim.opt.scrolloff=10
vim.opt.sidescroll=8

vim.opt.inccommand = "split"
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.laststatus = 3

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"
vim.undofile = true

vim.opt.completeopt = "menuone,noselect,fuzzy,nosort"
vim.opt.shortmess:append("c")
vim.opt.clipboard:append("unnamedplus")
vim.opt.isfname:append("@-@")
vim.opt.guicursor = ""
vim.opt.scrolloff = 8

vim.opt.colorcolumn = "0"
vim.opt.signcolumn = "yes"
--vim.o.cmdheight = 0
vim.opt.termguicolors = true

-- Indentation
vim.opt.tabstop=2
vim.opt.shiftwidth=2
vim.opt.softtabstop=2
vim.opt.expandtab=true
vim.opt.expandtab=true
vim.opt.smartindent=true
vim.opt.autoindent=true

-- Search settings
vim.opt.ignorecase=true
vim.opt.smartcase=true
vim.opt.hlsearch=true
vim.opt.incsearch=true

vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Hightlight when yanking (copying) text",
    callback = function()
        vim.hl.on_yank()
    end,
})

