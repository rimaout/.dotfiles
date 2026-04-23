vim.pack.add({
    { src = 'https://github.com/stevearc/conform.nvim' },
})

local conform = require('conform')

conform.setup({
    notify_on_error = true,
    formatters_by_ft = {
        lua = { 'stylua' },
        javascript = { 'prettier' },
        typescript = { 'prettier' },
        html = { 'prettier' },
        json = { 'prettier' },
        markdown = { 'prettier' },
        python = { 'isort', 'black' },
        sh = { 'shfmt' },
        haskell = { 'ormolu' },
        lhaskell = { 'ormolu' },
    },
})

local function format_buffer()
    conform.format({
        async = true,
        lsp_fallback = true,
    })
end

vim.keymap.set('n', '<leader>fr', format_buffer, { desc = '[F]o[R]mat the code in the current file' })
vim.keymap.set('v', '<leader>fr', format_buffer, { desc = '[F]o[R]mat the highlighted code' })