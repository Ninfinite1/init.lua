return {
    {
	"catppuccin/nvim", 
	name = "catppuccin",
	config = function()
	    vim.cmd([[colorscheme catppuccin-mocha]])
        end,
    },
    {
	"nvim-lualine/lualine.nvim",
	dependencies = {
	    "nvim-tree/nvim-web-devicons",
	},
	opts = {
	    theme = 'catppuccin-mocha',
	},
    },
}
