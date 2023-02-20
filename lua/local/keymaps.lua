vim.g.mapleader = " "

local keymap = vim.keymap 

-- automatically change line with } 
keymap.set("i", "{<Enter>","{<Enter>}<Esc>O")

-- nvim tree toggle 
keymap.set("n", "<leader>t", "<cmd>NvimTreeToggle<cr>")

-- telescope remaps
keymap.set("n", ";f", "<cmd>Telescope find_files<cr>")
keymap.set("n", ";F", "<cmd>Telescope git_files<cr>")
keymap.set("n", ";r", "<cmd>Telescope live_grep<cr>")
keymap.set("n", ";;", "<cmd>Telescope help_tags<cr>")

-- split window
keymap.set("n", "<leader>sp", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")

-- lsp 
keymap.set("n", "<leader>k", "<cmd>lua vim.lsp.buf.code_action()<cr>")

-- misc
keymap.set("n", "<leader>r", "<cmd> :!tsc % && node index.js<CR>")
