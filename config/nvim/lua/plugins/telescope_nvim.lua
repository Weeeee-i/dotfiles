MiniDeps.add({
	source = "nvim-telescope/telescope.nvim",
	depends = {
		"nvim-lua/plenary.nvim",
	},
})

vim.keymap.set("n", "<leader>f", ":Telescope<CR>")

