-- Leader setup
vim.g.mapleader = " "

-- Worst mode to be in
vim.keymap.set("n", "Q", "<nop>")

-- Netrw tree
vim.keymap.set("n", "<C-b>", vim.cmd.Ex)

-- Dashboard
vim.keymap.set("n", "<C-w>", ":edit ~/Work<CR>", { silent = true })

-- Disable arrow keys
vim.keymap.set("n", "<up>", "<nop>")
vim.keymap.set("n", "<down>", "<nop>")
vim.keymap.set("n", "<left>", "<nop>")
vim.keymap.set("n", "<right>", "<nop>")

-- Easier moving
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")

-- Tab navigation
vim.keymap.set("n", "<C-n>", ":tabnew<CR>", { silent = true })
vim.keymap.set("n", "J", ":tabprev<CR>", { silent = true })
vim.keymap.set("n", "K", ":tabnext<CR>", { silent = true })

-- Text navigation
vim.keymap.set("v", "J", "<nop>")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Remaping gj and gk
vim.keymap.set("n", "gj", "j")
vim.keymap.set("n", "gk", "k")

-- Manage sessions
vim.keymap.set("n", "<C-S-s>", ":mksession! /root/.config/nvim/session/_root_.vim<CR>")
vim.keymap.set("n", "<C-S-d>", ":!rm /root/.config/nvim/session/_root_.vim<CR>")
vim.keymap.set("n", "<C-l>", ":SessionLoad<CR>")

-- Yank to system clipboard
vim.keymap.set("v", "<C-c>", "\"+y")

-- Substitute a word
vim.keymap.set("n", "<C-s>", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<C-x>", "<cmd>!chmod +x %<CR>", { silent = true })

-- Compile and run C code
vim.keymap.set("n", "<C-S-c>", ":w<CR>:! clear && cc %:p -o %:p:r -lm<CR>", { silent = true })
vim.keymap.set("n", "<C-S-r>", "<cmd>! %:p:r<cr>", { silent = true })

-- Compile LaTeX
vim.keymap.set("n", "<C-p>", ":w<CR>:! clear && pdflatex -output-directory %:p:h %:p<CR>", { silent = true })

-- Compile BibTeX
vim.keymap.set("n", "<C-S-b>", ":w<cr>:!clear && cd %:p:h && bibtex %:t:r<cr>", { silent = true })

-- Open pdfs
vim.keymap.set("n", "<C-S-p>", "<cmd>! zathura $(echo % | sed 's/tex$/pdf/') & disown<CR><CR>", { silent = true })
