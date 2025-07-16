return {
	"neanias/everforest-nvim",
	config = function()
		require("everforest")
		vim.cmd([[colorscheme everforest]])
	end,
}
