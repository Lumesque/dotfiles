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


-- [[ NOTES ]] 
-- vim.o maps to :set
