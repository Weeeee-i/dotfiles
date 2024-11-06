MiniDeps.add({
	source = "nvim-tree/nvim-tree.lua",
})

require("nvim-tree").setup()

vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>")
