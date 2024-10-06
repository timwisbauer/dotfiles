-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	cmd = "Neotree",
	init = function()
		vim.api.nvim_create_autocmd("BufEnter", {
			-- make a group to be able to delete it later
			group = vim.api.nvim_create_augroup("NeoTreeInit", { clear = true }),
			callback = function()
				local f = vim.fn.expand("%:p")
				if vim.fn.isdirectory(f) ~= 0 then
					vim.cmd("Neotree current dir=" .. f)
					-- neo-tree is loaded now, delete the init autocmd
					vim.api.nvim_clear_autocmds({ group = "NeoTreeInit" })
				end
			end,
		})
	end,
	keys = {
		{ "\\", ":Neotree reveal<CR>", desc = "NeoTree reveal", silent = true },
	},
	opts = {
		filesystem = {
			filtered_items = {
				visible = true,
				show_hidden_count = true,
				hide_dotfiles = false,
				hide_gitignored = false,
				hide_by_name = {
					".git",
					".DS_Store",
					"thumbs.db",
				},
				never_show = {},
			},
			hijack_netrw_behavior = "open_default",
			window = {
				mappings = {
					["\\"] = "close_window",
				},
			},
		},
	},
}
