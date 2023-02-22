require "lualine".setup {
	options = {
		icons_enabled = true,
		--	theme = 'codedark',
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = {},
        theme = 'dracula-nvim',
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { { "b:gitsigns_head", icon = "" }, "diff" },
		lualine_c = {
			{
				"filename",
				file_status = true,
				path = 1, -- show relativ path
				shorting_target = 40,
				symbols = { modified = "[+]", readonly = " " }
			}
		},
		lualine_x = {
			{
				"diagnostics",
				sources = { "nvim_lsp" },
				symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
				diagnostics_color = {
					-- Same values as the general color option can be used here.
					error = 'DiagnosticError', -- Changes diagnostics' error color.
					warn  = 'DiagnosticWarn', -- Changes diagnostics' warn color.
					info  = 'DiagnosticInfo', -- Changes diagnostics' info color.
					hint  = 'DiagnosticHint', -- Changes diagnostics' hint color.
				},
			},
			"encoding",
			"fileformat", "filetype"
		},
		lualine_y = { "progress" },
		lualine_z = { "location" }
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {}
	},
	tabline = {},
	extensions = { "nvim-tree", "toggleterm", "quickfix", "symbols-outline" }
}
