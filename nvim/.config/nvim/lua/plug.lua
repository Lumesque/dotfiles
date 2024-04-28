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
        use {
            "Exafunction/codeium.nvim",
            requires={
                "nvim-lua/plenary.nvim",
                "hrsh7th/nvim-cmp",
            },
            config=function()
                vim.keymap.set('i', '<C-g>', function () return vim.fn['codeium#Accept']() end, {expr = true, silent = true})
                vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true})
                vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true})
                vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true})
            end
        }
        use({
            "epwalsh/obsidian.nvim",
            tag = "*",
            requires = {
                "nvim-lua/plenary.nvim",
                "hrsh7th/nvim-cmp",
            },
            config = function()
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
            end,
        })
    end,
    config = {
        package_root = vim.fn.stdpath("config") .. "/site/pack",
    },
})
