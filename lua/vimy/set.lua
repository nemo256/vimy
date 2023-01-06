vim.opt.nu = true
vim.opt.ignorecase = true
vim.opt.lazyredraw = true
vim.opt.showcmd = false
vim.opt.rnu = true
vim.opt.mouse = ""
vim.opt.guicursor = ""
vim.opt.laststatus = 2

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME").."/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- vim.opt.updatetime = 50

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.iskeyword:append("-")
vim.opt.iskeyword:append("_")
vim.opt.isfname:append("@-@")

-- Snippets (cmp)
vim.opt.completeopt = "menu,menuone,noselect"
