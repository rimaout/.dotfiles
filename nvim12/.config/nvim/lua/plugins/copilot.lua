-- Copilot completion
-- Note: ":Copilot setup" to login

vim.pack.add({"https://github.com/github/copilot.vim"})

vim.keymap.set('n', '<leader>cpe', '<cmd>Copilot enable<CR><cmd>echo "Copilot enabled"<CR>', { desc = "[C]o[P]ilot [E]nable" })
vim.keymap.set('n', '<leader>cpd', '<cmd>Copilot disable<CR><cmd>echo "Copilot disabled"<CR>', { desc = "[C]o[P]ilot [D]isable" })

-- Disable copilot safely at the start (after plugins load)
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        vim.cmd("Copilot disable")
    end,
})
