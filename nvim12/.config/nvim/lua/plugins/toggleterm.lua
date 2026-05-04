vim.pack.add({ 'https://github.com/akinsho/toggleterm.nvim' })
require('toggleterm').setup({ 
    direction = 'float',
	start_in_insert = true,
	persist_mode = true,
	persist_size = true,
})

-- Terminal 1: Shell
local Terminal = require('toggleterm.terminal').Terminal
local shell_term = Terminal:new({
	cmd = 'fish',
	display_name = 'Shell',
	close_on_exit = false,
})

function Shell_toggle()
	shell_term:toggle()
end

-- Terminal 2: GitUI
local gitui_term = Terminal:new({
	cmd = 'gitui',
	display_name = 'GitUI',
})

function Gitui_toggle()
	gitui_term:toggle()
end

-- Keymaps
vim.keymap.set('n', '<leader>t', Shell_toggle, { noremap = true, silent = true, desc = 'toggle [T]erminal shell' })
vim.keymap.set('n', '<leader>g', Gitui_toggle, { noremap = true, silent = true, desc = 'toggle [G]itUI terminal' })

local function interrupt_terminal()
	local job_id = vim.b.terminal_job_id
	if job_id then
		vim.api.nvim_chan_send(job_id, '\003')
	end
end

vim.keymap.set('t', '<C-c>', interrupt_terminal, { noremap = true, silent = true, desc = 'Interrupt terminal job' })

-- Universal close: press Ctrl-Q in terminal mode to close any terminal
vim.keymap.set('t', '<C-q>', function()
	require('toggleterm').toggle_all()
end, { noremap = true, silent = true, desc = 'Close all terminals' })