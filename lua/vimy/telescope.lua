local builtin = require('telescope.builtin')

require('telescope').setup{
  defaults = {
    mappings = {
      i = {
      	["<Esc>"] = require('telescope.actions').close,
      }
    }
  }
}

vim.keymap.set('n', '<C-f>',   builtin.find_files, {})
vim.keymap.set('n', '<C-g>',   builtin.git_files,  {})
vim.keymap.set('n', '<C-h>',   builtin.oldfiles,   {})
vim.keymap.set('n', '<C-S-M>', builtin.man_pages,  {})
vim.keymap.set('n', '<C-S-G>', function()
	builtin.grep_string({ search = vim.fn.input("Grep -> ") });
end)
