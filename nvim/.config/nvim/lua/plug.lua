-- [[ plug.lua ]]

return require("packer").startup({
    function(use)
        -- [[ Put plugins here ]]
        use {
            'kyazdani42/nvim-tree.lua',
            requires = 'nvim-tree/nvim-web-devicons'
        }
        use { 'mhinz/vim-startify' }
        use { 'DanilaMihailov/beacon.nvim' }
        use {
            'nvim-lualine/lualine.nvim',
            requires = {'kyazdani42/nvim-web-devicons',
            opt = true}
        }
        use { 'Mofiqul/dracula.nvim' }

        -- [[ DEV ]]
        use {
            'nvim-telescope/telescope.nvim',
            requires = { {'nvim-lua/plenary.nvim'} }
        }
        use { 'majutsushi/tagbar' }
        use { 'Yggdroot/indentLine' }
        use {'tpope/vim-fugitive' }
        use { 'junegunn/gv.vim' }
        use { 'windwp/nvim-autopairs' }
        --use {'kyazdani42/nvim-web-devicons'}
        use({'iamcco/markdown-preview.nvim',
             run = function() vim.fn["mkdp#util#install"]() end,
        })
        use {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "neovim/nvim-lspconfig",
        }
    end,
    config = {
        package_root = vim.fn.stdpath("config") .. "/site/pack",
    },
})
