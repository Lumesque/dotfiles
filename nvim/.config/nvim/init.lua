--[[ init.lua ]]

-- [[ LEADER ]]
vim.g.mapleader = ","
vim.g.localleader = "\\"


-- [[ VARIABLE IMPORTS ]]
require('vars')
require('paths')
require('opts')
require('keys')

-- [[ PLUGINS ]]
require('plug')

-- [[ SETUP ]]
require('nvim-tree').setup{}
require('lualine').setup{
    options = {
        theme = 'dracula-nvim'
    }
}
require('nvim-autopairs').setup{}
require("mason").setup()
require("mason-lspconfig").setup{
    ensure_installed = {"jedi_language_server"},
}
-- After install
require("lspconfig").jedi_language_server.setup({}) 
require("lspconfig").gopls.setup({}) 


-- [[ NOTES ]] 
-- vim.o maps to :set
