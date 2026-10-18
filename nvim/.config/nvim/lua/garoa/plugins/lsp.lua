-- default
-- "n" - "grt" -> Go to Type Definition
-- "n" - "gri" -> Go to implementation
-- "n" - "grr" -> Find References
-- "n" - "grn" -> Rename
-- {"n","v"} - "gra" -> Code Actions
-- "n" - "grx" -> Run CodeLens
-- "n" - "gO" -> Documents Symbols
-- "i" - "<C-s>" -> Signature Help
-- "n" - "K" -> Show Documentation
require("mason").setup()

vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format Local buffer" })
-- vim.keymap.set("n", "<leader>df", vim.diagnostic.open_float , { desc = "Show Line Diagnostics" })

vim.diagnostic.config({
    virtual_text = true,
    underline = false,
    update_in_insert = true,
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = vim.tbl_deep_extend("force", capabilities, require("mini.completion").get_lsp_capabilities())

vim.lsp.config("*", { capabilities = capabilities })

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = { globals = { "vim" } },
        }
    },
})

vim.lsp.enable({
    "lua_ls",
    "ts_ls",
    "marksman",
    "gopls"
})
