---@type ChadrcConfig
local M = {}

M.ui = { theme = 'catppuccin' }

-- We only set the key mappings here, ensuring no circular dependencies
vim.api.nvim_set_keymap('n', 'dd', '"_dd', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'D', 'dd', { noremap = true, silent = true })

-- link plugins
M.plugins = 'custom.plugins'
M.mappings = require "custom.mappings"

-- set spellchack colors
vim.cmd [[
" Change the background or foreground and add undercurl or underline
highlight SpellBad ctermfg=1 guifg=#FF0000 ctermbg=none guibg=none gui=undercurl
highlight SpellCap ctermfg=3 guifg=#FFFF00 ctermbg=none guibg=none gui=undercurl
highlight SpellRare ctermfg=4 guifg=#FFA500 ctermbg=none guibg=none gui=underline
highlight SpellLocal ctermfg=5 guifg=#00FFFF ctermbg=none guibg=none gui=underline
]]
return M
