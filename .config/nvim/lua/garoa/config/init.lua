return {

	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
		end
	},
	{
		"nvim-lua/plenary.nvim",
		name = "plenary"
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate"
	},
    {
        "ThePrimeagen/harpoon",
        branch="harpoon2",
        dependencies={"nvim-lua/plenary.nvim"},
    },
	"mbbill/undotree",
}
