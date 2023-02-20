-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 2
vim.g.loaded_netrwPlugin = 1

-- empty setup using defaults
require("nvim-tree").setup()

-- lualine 
require('lualine').setup()


-- lsp magic, thanks to lsp-zero
local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.setup()

lsp.ensure_installed({
  'html',
  'tsserver',
  'eslint'
})

-- share options between serveral servers
local lsp_opts = {
  flags = {
    debounce_text_changes = 150,
  }
}

lsp.setup_servers({
  'html',
  'tsserver',
  'eslint',
  opts = lsp_opts
})

-- Tree Sitter 
require('nvim-treesitter.configs').setup({
  -- enable syntax highlighting
  highlight = {
    enable = true,
  },
  -- enable indentation
  indent = { enable = true },
  -- enable autotagging (w/ nvim-ts-autotag plugin)
  autotag = { enable = true },
  -- ensure these language parsers are installed
  ensure_installed = {
    "json",
    "javascript",
    "typescript",
    "tsx",
    "yaml",
    "html",
    "css",
    "markdown",
    "svelte",
    "graphql",
    "bash",
    "lua",
    "vim",
    "dockerfile",
    "gitignore",
  },
  -- auto install above language parsers
  auto_install = true,
})

local npairs = require("nvim-autopairs")

npairs.setup({
    check_ts = true,
    ts_config = {
        lua = {'string'},-- it will not add a pair on that treesitter node
        javascript = {'template_string'},
    }
})


