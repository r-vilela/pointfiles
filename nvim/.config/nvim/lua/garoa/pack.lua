vim.pack.add({
    "https://github.com/rafamadriz/friendly-snippets",
    "https://github.com/bluz71/vim-moonfly-colors",
    "https://github.com/nvim-mini/mini.nvim",
    { src="https://github.com/nvim-treesitter/nvim-treesitter", branch="main"},
    "https://github.com/neovim/nvim-lspconfig",
    "https://github.com/mason-org/mason.nvim",
} )

require("garoa.plugins.mini")
require("garoa.plugins.treesitter")
require("garoa.plugins.lsp")

