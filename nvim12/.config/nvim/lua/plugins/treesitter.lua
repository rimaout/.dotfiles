vim.pack.add({'https://github.com/romus204/tree-sitter-manager.nvim'})

-- Remember to install "tree-sitter-cli" (on mac os do "brew install tree-sitter-cli")

require("tree-sitter-manager").setup({
    auto_install = true,    -- if enabled, install missing parsers when editing a new file
    highlight = true,       -- treesitter highlighting is enabled by default

    ensure_installed = {
        -- Systems, Compiled & Backend
        'c', 'cpp', 'rust', 'zig', 'go', 'java', 'swift', 'haskell', 'cuda', 'arduino',

        -- Scripting, Automation & Shell
        'python', 'ruby', 'lua', 'bash', 'fish',

        -- Web Development (Frontend)
        'html', 'css', 'javascript', 'typescript', 'vue',

        -- Data Formats & Configuration
        'json', 'yaml', 'xml', 'csv',

        -- Documentation & Typography
        'markdown', 'markdown_inline', 'typst',

        -- Git (Integration & Logs)
        'git_config', 'git_rebase', 'gitcommit', 'gitignore',

        -- Data Analysis & Database
        'sql', 'r',

        -- Build Tools
        'cmake'
    }
})
