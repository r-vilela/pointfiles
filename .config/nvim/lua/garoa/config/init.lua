return {

	{
		"rose-pine/neovim",
		name = "rose-pine",
		condig = function()
			vim.cmd("colorscheme rose-pine")
		end
	},
	{
		"nvim-lua/plenary.nvim",
		name = "plenary"
	},
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "plenary" }
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate"
	},
	"mbbill/undotree",
}
