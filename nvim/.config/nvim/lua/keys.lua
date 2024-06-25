-- [[ KEY SETUP ]]
local map = vim.api.nvim_set_keymap
local keymap = vim.keymap

-- map('n', 'l', [[:IndentLinesToggle]], {})
map('n', 't', [[:TagbarToggle]], {})
map('n', 'ff', [[:Telescope find_files]], {})

keymap.set({'n', 'x'}, "<leader>y", [["+y]]) -- copy to clipboard
keymap.set({'n', 'x'}, "<leader>p", [["+p]]) -- paste from clipboard

