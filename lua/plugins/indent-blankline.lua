vim.opt.list = true
vim.opt.listchars:append("space:.")
vim.opt.listchars:append("eol:↴")

return {
	"lukas-reineke/indent-blankline.nvim",
	lazy = false,
	main = "ibl",
	opts = {},
}
