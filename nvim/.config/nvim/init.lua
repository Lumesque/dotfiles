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
--require("lua/plug")

-- [[ SETUP ]]
require('nvim-tree').setup{}
require('lualine').setup{
    options = {
        theme = 'dracula-nvim'
    }
}
require('nvim-autopairs').setup{}

-- Why does this have to go here to work?
require("obsidian").setup({
    workspaces = {
            {
                name = "Personal",
                path = "~/Obsidian/Personal",
            },
            {
                name = "Rust",
                path = "~/Obsidian/Rust",
            },
        },
        completion = {
            nvim_cmp = true,
            min_chars = 2,
        },
        templates = {
            subdir = "Templates",
            date_format = "%Y-%m-%d",
            time_format = "%H:%M",
        },
        picker = {
            name = "fzf-lua",
            mappings = {
                new = "<C-x>",
                insert_link="<C-l>",
            },
        },
})

-- LSPs
require("mason").setup()
require("mason-lspconfig").setup{
    ensure_installed = {"jedi_language_server"},
}
-- After install
require("lspconfig").jedi_language_server.setup({}) 
require("lspconfig").gopls.setup({}) 
require("lspconfig").bashls.setup({}) 


-- [[ NOTES ]] 
-- vim.o maps to :set
