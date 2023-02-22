-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- The following example advertise capabilities to `clangd`.
require 'lspconfig'.clangd.setup { capabilities = capabilities, }
require 'lspconfig'.pyright.setup { capabilities = capabilities, }
require 'lspconfig'.cmake.setup { capabilities = capabilities, }
require 'lspconfig'.jsonls.setup { capabilities = capabilities, }
require 'lspconfig'.sumneko_lua.setup {
	capabilities = capabilities,
	settings = {
		Lua = {
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { 'vim' },
			},
		},
	},
}
-- local on_attach = function(client)
--    require'completion'.on_attach(client)
-- end

require 'lspconfig'.rust_analyzer.setup({
--    on_attach=on_attach,
    settings = {
        ["rust-analyzer"] = {
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            cargo = {
                buildScripts = {
                    enable = true,
                },
            },
            procMacro = {
                enable = true
            },
        }
    }
})
