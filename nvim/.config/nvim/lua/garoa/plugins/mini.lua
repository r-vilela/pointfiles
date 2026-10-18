-- Mini Files
local MiniFiles = require("mini.files")
MiniFiles.setup({
    mappings = {
        go_in= "<CR>",
        go_in_plus = "L",
        go_out = "_",
        go_out_plus = "H"
    },
})

vim.keymap.set("n", "-", "<cmd>lua MiniFiles.open()<CR>", { desc="Toggle mini open files" })

vim.keymap.set("n", "<leader>-", function()
    MiniFiles.open(vim.api.nvim_buf_get_name(0), false)
    MiniFiles.reveal_cwd()
end, { desc="Toggle mini files into current file" })

-- Mini Notify
require("mini.notify").setup({
    content = {
        format = function(notif)
            return notif.msg
        end
    },
})

-- Mini Command Line Completion
require("mini.cmdline").setup({
    autocorrect = { enable = false }
})

-- Mini Surround
require("mini.surround").setup()
-- 'sa' add
-- 'sd' remove
-- 'sr' replace

-- mini picker
local MiniPick = require("mini.pick")
local MiniExtra = require("mini.extra")

MiniPick.setup()
MiniExtra.setup()

-- keymaps
vim.keymap.set("n", "<leader>pf", function() MiniPick.builtin.files() end, { desc="Mini Files Picker" })
vim.keymap.set("n", "<leader>ps", function() MiniPick.builtin.grep({ pattern=vim.fn.expand("<cword>") }) end, { desc="Mini Files Search" })
vim.keymap.set("n", "<leader>vh", function() MiniPick.builtin.help() end, { desc="Mini Help" })

vim.keymap.set("n", "<leader>xx", function() MiniExtra.pickers.diagnostic() end, { desc="Mini Picker Diagnostic" })
vim.keymap.set("n", "<leader>pk", function() MiniExtra.pickers.keymaps() end, { desc="Mini Picker Keymaps" })

-- Mini Completion
local MiniCompletion = require("mini.completion")
MiniCompletion.setup({
    lsp_completion={
        auto_setup=true,
        process_items = function(items, base)
            return MiniCompletion.default_process_items(items, base, {
                filtersort="fuzzy"
            })
        end
    }
})

-- Mini Snippets
local MiniSnippets = require("mini.snippets")
MiniSnippets.setup({
    snippets = {
        MiniSnippets.gen_loader.from_lang(),
    },
    expand={
        insert=function(snippet)
            MiniSnippets.default_insert(snippet, {empty_tabstop=""})
        end
    }
})

MiniSnippets.start_lsp_server({ match=false })


