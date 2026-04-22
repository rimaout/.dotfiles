-- Undotree is a built-in plugin that provides a visual representation of the undo history. It allows you to easily navigate through your undo history and visualize the changes made to your files

vim.keymap.set('n', '<leader>tu', function()
    -- Check if the Undotree command exists yet (0 means it does not exist)
    if vim.fn.exists(':Undotree') == 0 then
        vim.cmd('packadd nvim.undotree')
    end

    -- Open the tree
    vim.cmd('Undotree')
end, { desc = "Toggle built-in [U]ndo [T]ree" })
