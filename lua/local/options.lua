local opt = vim.opt 

-- color scheme
vim.cmd("colorscheme nightfox")

-- scroll offset
opt.scrolloff = 10

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indent
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smarttab = true

-- search option
opt.ignorecase = true
opt.smartcase = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace 
opt.backspace = "indent,eol,start"

-- cursor
-- opt.guicursor = "a:blinkwait5-blinkon5-blinkoff5"

