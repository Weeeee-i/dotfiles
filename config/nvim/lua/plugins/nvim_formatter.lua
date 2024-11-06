MiniDeps.add({ source = "mhartington/formatter.nvim" })

local fmt = require("formatter.filetypes")
require("formatter").setup({
	logging = false,
	log_level = vim.log.levels.WARN,
	filetype = {
		lua = { fmt.lua.stylua },
		python = { fmt.python.ruff },
		rust = { fmt.rust.rustfmt },
		nix = { fmt.nix.alejandra },
		markdown = {
			function()
				return {
					exe = "prettierd",
					args = { vim.api.nvim_buf_get_name(0) },
					stdin = true,
				}
			end,
		},
		javascript = { fmt.javascript.biome },
		css = { fmt.css.prettierd },
		html = { fmt.html.prettierd },
	},
})

vim.keymap.set("n", "<leader>p", ":Format<CR>")
