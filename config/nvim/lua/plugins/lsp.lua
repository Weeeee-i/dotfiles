MiniDeps.add({ source = "neovim/nvim-lspconfig" })

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local lsp = require("lspconfig")

lsp.ruff.setup({ capabilities = capabilities })
lsp.lua_ls.setup({ capabilities = capabilities })
lsp.rust_analyzer.setup({ capabilities = capabilities })
lsp.nil_ls.setup({ capabilities = capabilities })
lsp.taplo.setup({ capabilities = capabilities })
lsp.yamlls.setup({ capabilities = capabilities })
lsp.markdown_oxide.setup({ capabilities = capabilities })
lsp.openscad_lsp.setup({ capabilities = capabilities })
lsp.zk.setup({ capabilities = capabilities })
lsp.biome.setup({ capabilities = capabilities })
