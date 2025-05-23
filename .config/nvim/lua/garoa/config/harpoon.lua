return {
    
    "ThePrimeagen/harpoon",

    branch="harpoon2",

    dependencies={"plenary", "telescope.nvim"},


    config = function()
        local harpoon = require('harpoon')
        harpoon.setup({})

        local conf = require("telescope.config").values

        local function toggle_telescope(harpoon_files)
            local file_paths = {}
            for _, item in ipairs(harpoon_files.items) do
                table.insert(file_paths, item.value)
            end

            require("telescope.pickers").new({}, {
                prompt_title = "Harpoon",
                finder = require("telescope.finders").new_table({
                    results = file_paths,
                }),
                previewer = conf.file_previewer({}),
                sorter = conf.generic_sorter({}),
            }):find()
        end
                

        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
        vim.keymap.set("n", "<C-f>", function() toggle_telescope(harpoon:list()) end,
            {desc = "Open Harpoon window"})
        vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

        vim.keymap.set("n", "<C-u>", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<C-i>", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<C-o>", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<C-y>", function() harpoon:list():select(4) end)

        vim.keymap.set("n", "<C-n>", function() harpoon:list():next() end)
        vim.keymap.set("n", "<C-m>", function() harpoon:list():prev() end)
    end
}
