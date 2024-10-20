return {
	"nvim-telescope/telescope.nvim",
	config = function()
		local builtin = require("telescope.builtin")

		require("telescope").setup({
			defaults = {
				mappings = {
					i = {
						["<Esc>"] = require("telescope.actions").close,
					},
				},
			},
		})

		vim.keymap.set("n", "<C-S-f>", builtin.find_files, {})
		vim.keymap.set("n", "<C-S-g>", builtin.git_files, {})
		vim.keymap.set("n", "<C-S-h>", builtin.oldfiles, {})
		vim.keymap.set("n", "<C-S-M>", builtin.man_pages, {})
		vim.keymap.set("n", "<C-S-G>", function()
			builtin.grep_string({ search = vim.fn.input("Grep -> ") })
		end)
	end,
}
