-- Set Leader Key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Indenting settings
vim.opt.expandtab = true    -- Use spaces instead of tabs for indentation
vim.opt.tabstop = 4         -- Set the width of a tab character to 4 spaces
vim.opt.softtabstop= 4      -- Set the number of spaces a tab counts for while editing
vim.opt.shiftwidth = 4      -- Set the number of spaces to use for each step of indentation
vim.opt.smarttab = true     -- Insert tabs at the beginning of a line according to shiftwidth, not tabstop
vim.opt.smartindent = true  -- smart auto indent
vim.opt.autoindent = true   -- copy indent from current line

-- Line numbers
vim.opt.number = true           -- Show line numbers
vim.opt.relativenumber = true   -- Enable relative line numbers
vim.opt.cursorline = true       -- Highlight the current line
vim.opt.scrolloff = 10          -- keep 8 lines above and below the cursor
vim.opt.sidescrolloff = 10      -- keep 10 collums to the left/right of cursor 

-- Search settings (command "/")
vim.opt.hlsearch = true     -- Highlight all matches of the previous search
vim.opt.incsearch = true    -- Show matches while typing the search
vim.opt.ignorecase = true   -- Case insensitive search
vim.opt.smartcase = true    -- Override ignorecase if search pattern contains uppercase letters

-- Style
vim.g.have_nerd_font = true     -- Set to true if you have a Nerd Font installed and selected in the terminal
vim.opt.termguicolors = true    -- enable 24-bit RGB color in the terminal
vim.opt.wrap = false            -- disable line wrapping (disble go new line if line is too long)
vim.opt.showmode = false        -- Hide mode message (i use lualine statusline instead)
vim.opt.winborder = 'single'    -- add border to floating windows
vim.opt.showmatch = true        -- highlights matching brackets

-- Configure how new splits should be opened
vim.opt.splitright = true   -- default is to open new vertical splits to the left
vim.opt.splitbelow = true   -- default is to open new horizontal splits above

-- Disable Mouse
--vim.opt.mouse = '' -- Disable mouse support
vim.opt.mouse = "a"  -- Enable mouse mode, useful for resising window splits

-- Safety
local undodir = vim.fn.expand("~/.vim/undodir")
if
        vim.fn.isdirectory(undodir) == 0 -- create undodir if nonexistent
then
        vim.fn.mkdir(undodir, "p")
end

vim.opt.undofile = true     -- do create an undo file
vim.opt.undodir = undodir   -- set the undo directory

vim.opt.backup = false      -- do not create a backup file
vim.opt.writebackup = false -- do not write to a backup file
vim.opt.swapfile = false    -- do not create a swapfile

vim.opt.autoread = true     -- auto-reload changes if outside of neovim
vim.opt.autowrite = false   -- do not auto-save

vim.opt.confirm = true      -- Confirm before closing unsaved files

vim.opt.updatetime = 300    -- faster completion
vim.opt.timeoutlen = 500    -- timeout duration
vim.opt.ttimeoutlen = 0     -- key code timeout

-- Other
vim.opt.hidden = true                   -- allow hidden buffers
vim.opt.errorbells = false              -- no error sounds
vim.opt.backspace = "indent,eol,start"  -- better backspace behaviour
vim.opt.autochdir = false               -- do not autochange directories
vim.opt.iskeyword:append("-")           -- include - in-words
vim.opt.path:append("**")               -- include subdirs in search
vim.opt.selection = "inclusive"         -- include last char in selection
vim.opt.modifiable = true               -- allow buffer modifications
vim.opt.encoding = "UTF-8"              -- set encoding
