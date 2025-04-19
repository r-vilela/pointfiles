return {
    "nvim-treesitter/nvim-treesitter",

     build = ":TSUpdate",

    config = function()
        require("nvim-treesitter.configs").setup {
            ensure_installed = { "c", "java", "vimdoc", "typescript", "javascript", "lua"},

            sync_install = false,

            auto_install = true,

            ignore_install = {"javascript"},

            highlight = {
                enable = true,

                additional_vim_regex_highlighting = { "markdown" }
            }
        }
        local treesitter_parser_config = require("nvim-treesitter.parsers").get_parser_configs()
        treesitter_parser_config = {
            install_info = {
                url = "https://github.com/vrischmann/tree-sitter-temlp.git",
                files = {"src/parser.c", "src/scanner.c"},
                branch = "master"
            }
        }

        vim.treesitter.language.register("templ", "templ")
    end

}
