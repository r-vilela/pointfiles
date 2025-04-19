return {
    "folke/trouble.nvim",

    keys = {
        {
            "<leader>xx",
            "<cmd>Trouble diagnostics toggle<cr>",
            desc = "Diagnostics (Trouble)",
        },
    },


    config = function()
        require("trouble").setup({
            icons = false,
        })

        vim.keymap.set("n", "<leader>tt", function()
            require("trouble").diagnostics().toggle()
        end, {desc = "Toggle Trouble (document diagnostics)"})

        vim.keymap.set("n", "<leader>tn", function()
            require("trouble").next({skip_groups=true, jump=true})
        end)

        vim.keymap.set("n", "<leader>tp", function()
            require("trouble").previous({skip_groups=true, jump=true})
        end)

    end
}

