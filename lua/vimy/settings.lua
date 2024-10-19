local g = vim.g
local o = vim.opt

o.nu = true
o.ignorecase = true
o.lazyredraw = true
o.showcmd = false
o.rnu = true
o.mouse = ""
o.guicursor = ""
o.laststatus = 2

o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true

o.smartindent = true

o.wrap = true

o.swapfile = false
o.backup = false
o.undodir = os.getenv("HOME").."/.vim/undodir"
o.undofile = true

o.hlsearch = false
o.incsearch = true

o.termguicolors = true

-- vim.opt.updatetime = 50

o.scrolloff = 8
o.signcolumn = "yes"
o.iskeyword:append("-")
o.iskeyword:append("_")
o.isfname:append("@-@")

-- Snippets (cmp)
o.completeopt = "menu,menuone,noselect"

-- Undotree
g.undotree_WindowLayout = 2
g.undotree_ShortIndicators = 0
g.undotree_SplitWidth = 10
g.undotree_DiffpanelHeight = 5

