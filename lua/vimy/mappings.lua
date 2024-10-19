local k = vim.keymap

-- Leader setup
vim.g.mapleader = " "

-- Worst mode to be in
k.set("n", "Q", "<nop>")

-- Netrw tree
-- k.set("n", "<C-b>", vim.cmd.Ex)

-- Neotree
k.set("n", "<C-b>", ":Neotree toggle<CR>", { silent = true })

-- DadbodUI
-- Function to close all windows and launch DBUI
local function open_dbui()
	-- Set custom mappings for Dadbod UI after it's opened
	-- Close the dashboard buffer if it's visible
	if vim.bo.filetype == "dashboard" then
		vim.cmd("bd") -- Close the dashboard buffer
	end
	-- Open DBUI
	vim.cmd("DBUIToggle")
	-- Move to the other window (assumed empty)
	vim.cmd("wincmd l") -- Switch to the next window
	-- Close the current window if it's not DBUI
	if vim.bo.filetype ~= "dbui" then
		vim.cmd("close") -- Close the extra window
	end
end
k.set("n", "<C-g>", open_dbui, { silent = true })

-- Panes (splits) setup
k.set("n", "<C-h>", "<C-w>W", { noremap = true, silent = true })
k.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
k.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
k.set("n", "<C-l>", "<C-w>w", { noremap = true, silent = true })

-- Dashboard
k.set("n", "<C-S-w>", ":edit ~/work<CR>", { silent = true })

-- Disable arrow keys
k.set("n", "<up>", "<nop>")
k.set("n", "<down>", "<nop>")
k.set("n", "<left>", "<nop>")
k.set("n", "<right>", "<nop>")

-- Easier moving
-- k.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
-- k.set("v", "<C-k>", ":m '<-2<CR>gv=gv")

-- Tab navigation
k.set("n", "<C-n>", ":tabnew<CR>", { silent = true })
k.set("n", "J", ":tabprev<CR>", { silent = true })
k.set("n", "K", ":tabnext<CR>", { silent = true })

-- Text navigation
k.set("v", "J", "<nop>")
k.set("n", "<C-d>", "<C-d>zz")
k.set("n", "<C-u>", "<C-u>zz")
k.set("n", "n", "nzzzv")
k.set("n", "N", "Nzzzv")

-- Remaping gj and gk
k.set("n", "gj", "j")
k.set("n", "gk", "k")

-- Manage sessions
k.set("n", "<C-S-s>", ":mksession! ~/.config/nvim/session/_root_.vim<CR>")
k.set("n", "<C-S-d>", ":!rm ~/.config/nvim/session/_root_.vim<CR>")
k.set("n", "<C-S-l>", ":source ~/.config/nvim/session/_root_.vim<CR>")

-- Yank to system clipboard
k.set("v", "<C-c>", '"+y')

-- Substitute a word
k.set("n", "<C-s>", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
k.set("n", "<C-x>", "<cmd>!chmod +x %<CR>", { silent = true })

-- Compile and run C code
k.set("n", "<C-S-c>", ":w<CR>:! clear && cc %:p -o %:p:r -lm<CR>", { silent = true })
k.set("n", "<C-S-r>", "<cmd>! %:p:r<cr>", { silent = true })

-- Compile LaTeX
k.set("n", "<C-p>", ":w<CR>:! clear && pdflatex -output-directory %:p:h %:p<CR>", { silent = true })

-- Compile BibTeX
k.set("n", "<C-S-b>", ":w<cr>:!clear && cd %:p:h && bibtex %:t:r<cr>", { silent = true })

-- Open pdfs
k.set("n", "<C-S-p>", "<cmd>! zathura $(echo % | sed 's/tex$/pdf/') & disown<CR><CR>", { silent = true })
