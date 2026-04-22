vim.pack.add({
	{ src = "https://github.com/Saghen/blink.cmp", version = "v1.6.0" },
	{ src = "https://github.com/L3MON4D3/LuaSnip" },
	{ src = "https://github.com/rafamadriz/friendly-snippets" },
})

require("luasnip.loaders.from_vscode").lazy_load()
require("blink.cmp").setup({
	-- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
	-- 'super-tab' for mappings similar to vscode (tab to accept)
	-- 'enter' for enter to accept
	-- 'none' for no mappings
	--
	-- All presets have the following mappings:
	--   C-space: Open menu or open docs if already open
	--   C-n/C-p or Up/Down: Select next/previous item
	--   C-e: Hide menu
	--   C-k: Toggle signature help (if signature.enabled = true)

	keymap = { preset = "super-tab" },
	appearance = { nerd_font_variant = "mono" },
    signature = { enabled = true },

    sources = { default = { "lsp", "path", "buffer", "snippets"} },

    fuzzy = { implementation = "prefer_rust_with_warning" },

    completion = {
        documentation = { auto_show = true, auto_show_delay_ms = 500 },
        menu = {
		    auto_show = true,
		    draw = {
			    treesitter = { "lsp" },
			    columns = { { "kind_icon", "label", "label_description", gap = 1 }, { "kind" } },
		    },
	    }
    }
})
