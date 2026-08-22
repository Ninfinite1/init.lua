return{
    {
	'tpope/vim-fugitive',
    },
    {
	"norcalli/nvim-colorizer.lua",
	config = function()
	    require("colorizer").setup()
	end,
    }
}
