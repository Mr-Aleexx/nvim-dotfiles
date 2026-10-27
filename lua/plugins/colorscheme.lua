-- plugins/colorscheme.lua
-- Catppuccin Macchiato with transparent background.
-- Opacity and blur are managed by Hyprland on the kitty window —
-- Neovim intentionally sets no background color.

return {
	"loctvl842/monokai-pro.nvim",
	name = "monokai",
	priority = 1000,
	opts = {
		override = function(scheme)
			return {
				["Type"] = { fg = "#78dce8" },
				["cType"] = { fg = "#78dce8" },
				["@type"] = { fg = "#78dce8" },
				["@lsp.type.class"] = { fg = "#A6E22E" },
				["@lsp.type.parameter.c"] = { fg = "#FD971F" },
				["@lsp.type.function.c"] = { fg = "#A6E22E" },
				["@lsp.typemod.function.defaultLibrary.c"] = { fg = "#A6E22E" },
				["@operator"] = { fg = "#FF6188" },
				["@operator.c"] = { fg = "#FF6188" },
				["@operator.cpp"] = { fg = "#FF6188" },
			}
		end,
		override_palette = function(filter)
			return {
				background = "#221f22",
			}
		end,
		transparent_background = false,
		terminal_colors = true,
		devicons = true,
		styles = {
			comment = { italic = true },
			keyword = { italic = true },
			type = { italic = true },
			storageclass = { italic = true },
			structure = { italic = true },
			parameter = { italic = true },
			annotation = { italic = true },
			tag_attribute = { italic = true },
		},
		filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum
		day_night = {
			enable = false,
			day_filter = "pro",
			night_filter = "spectrum",
		},
		inc_search = "background", -- underline | background
		background_clear = {
			"toggleterm",
			"telescope",
			"renamer",
			"notify",
		},
		plugins = {
			bufferline = {
				underline_selected = false,
				underline_visible = false,
				underline_fill = false,
				bold = true,
			},
			indent_blankline = {
				context_highlight = "default", -- default | pro
				context_start_underline = false,
			},
		},
	},
	config = function(_, opts)
		require("monokai-pro").setup(opts)
		vim.cmd.colorscheme("monokai-pro")

		-- Belt-and-suspenders: clear any bg that catppuccin might leave on floats
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
	end,
}
