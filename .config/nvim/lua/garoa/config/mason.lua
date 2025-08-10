return {
    "mason-org/mason.nvim",
    "mason-org/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "j-hui/fidget.nvim",

    -- Allows extra capabilities provided by blink.cmp
    'saghen/blink.cmp',

    config = function()
        require("mason").setup()
        require("fidget").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {"lua_ls", "rust_analyser"},
        })
    end
}
