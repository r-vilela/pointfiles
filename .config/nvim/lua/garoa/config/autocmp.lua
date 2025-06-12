return  {
    'saghen/blink.cmp',
    -- optional: provides snippets for the snippet source
    dependencies = { 'rafamadriz/friendly-snippets' },

--    dependencies = {
--        {
--            "L3MON4D3/LuaSnip",
--            version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
--            build = "make install_jsregexp",
--        },
--        {
--            'folke/lazydev.nvim',
--        }
--    },

    -- use a release tag to download pre-built binaries
    version = '1.*',
    -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
    -- build = 'cargo build --release',
    -- If you use nix, you can build from source using latest nightly rust with:
    -- build = 'nix run .#build-plugin',

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
        -- <c-y> accept
        -- <tab>/<s-tab> move right/left of yout snippte expansion
        -- <c-space> open menu or open docs if already open
        -- <c-n>/<c-p> or <up>/<down> select next/previous item
        -- <c-e> hide menu
        -- <c-k> toggle signature help
        -- :h blink-cmp-config-keymap for defining your own keymap
        keymap = { preset = 'default' },

        appearance = {
            -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
            -- Adjusts spacing to ensure icons are aligned
            nerd_font_variant = 'mono'
        },

        -- (Default) Only show the documentation popup when manually triggered
        completion = {
            documentation = { auto_show = false, auto_show_delay_ms = 500},
        },

        -- Default list of enabled providers defined so that you can extend it
        -- elsewhere in your config, without redefining it, due to `opts_extend`
--        sources = {
--            default = { 'lsp', 'path', 'snippets', 'lazydev' },
--            providers = {
--                lazydev = { module = 'lazydev.integrations.blink', score_offset = 100 },
--            },
--        },
        sources = {
            default = { 'lsp', 'path', 'snippets', 'buffer' },
        },

        -- snippets = { preset = 'luasnip' },

        -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
        -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
        -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
        --
        -- See the fuzzy documentation for more information
        -- fuzzy = { implementation = "prefer_rust_with_warning" }
        fuzzy = { implementation = 'lua' },
        signature = { enabled = true },
    },
    opts_extend = { "sources.default" }
}
