-- Leader setup
vim.g.mapleader = " "

-- Worst mode to be in
vim.keymap.set("n", "Q", "<nop>")

-- Netrw tree
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Easier moving
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")

-- Tab navigation
vim.keymap.set("n", "<C-n>", ":tabnew<CR>", { silent = true })
vim.keymap.set("n", "J", ":tabprev<CR>", { silent = true })
vim.keymap.set("n", "K", ":tabnext<CR>", { silent = true })

-- Buffers navigation
vim.keymap.set("n", "<C-1", "<Cmd>BufferLineGoToBuffer 1<CR>")
vim.keymap.set("n", "<C-2", "<Cmd>BufferLineGoToBuffer 2<CR>")
vim.keymap.set("n", "<C-3", "<Cmd>BufferLineGoToBuffer 3<CR>")
vim.keymap.set("n", "<C-4", "<Cmd>BufferLineGoToBuffer 4<CR>")
vim.keymap.set("n", "<C-5", "<Cmd>BufferLineGoToBuffer 5<CR>")
vim.keymap.set("n", "<C-6", "<Cmd>BufferLineGoToBuffer 6<CR>")
vim.keymap.set("n", "<C-7", "<Cmd>BufferLineGoToBuffer 7<CR>")
vim.keymap.set("n", "<C-8", "<Cmd>BufferLineGoToBuffer 8<CR>")
vim.keymap.set("n", "<C-9", "<Cmd>BufferLineGoToBuffer 9<CR>")

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
vim.keymap.set("n", "<C-s>", ":SSave<CR>")
vim.keymap.set("n", "<C-x>", ":SDelete<CR>")

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
vim.keymap.set("n", "<C-b>", ":w<cr>:!clear && cd %:p:h && bibtex %:t:r<cr>", { silent = true })

-- Open pdfs
vim.keymap.set("n", "<C-S-p>", "<cmd>! zathura $(echo % | sed 's/tex$/pdf/') & disown<CR><CR>", { silent = true })

