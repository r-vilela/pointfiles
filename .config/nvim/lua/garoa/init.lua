require("garoa.set")
require("garoa.remap")
require("garoa.lazy")

local augroup = vim.api.nvim_create_augroup
local GaroaGroup = augroup('GaroaGroup', {})

local autocmd = vim.api.nvim_create_autocmd
local yankGroup = augroup('HighlightYank', {})

function R(name)
    require("prenary.reload").reload_module(name)
end

vim.filetype.add({
    extension = {
        templ = 'templ',
    }
})

autocmd('TextYankPost', {
    group = yankGroup,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40
        })
    end
})

autocmd({'BufWritePre'}, {
    group = GaroaGroup,
    pattern = '*',
    command = [[%s/\s\+$//e]],
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
