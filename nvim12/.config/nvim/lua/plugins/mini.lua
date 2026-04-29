vim.pack.add({"https://github.com/nvim-mini/mini.nvim"})

-- Background Plugin (no actions, this have no mapping)
require("mini.pairs").setup({})
require("mini.notify").setup({})
require("mini.indentscope").setup({})
require("mini.cursorword").setup({})

-- Action Plugins (with mappings)
require("mini.surround").setup() -- Add/change/delete surrounding delimiter pairs use 
require('mini.comment').setup()
require('mini.trailspace').setup()

vim.keymap.set('n', '<leader>ts', function()
	MiniTrailspace.trim()
end, { desc = '[T]rim trailing white[S]pace' })
