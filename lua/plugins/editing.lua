-- plugins/editing.lua
-- Quality-of-life editing plugins.
--
--   nvim-autopairs  → auto-closes () [] {} "" '' `` in insert mode
--                     (tree-sitter aware: skips pairing inside strings/comments)
--
--   nvim-surround   → add / change / delete surrounding pairs
--                     Key sequences:
--                       ys<motion><char>   add surround     e.g. ysiw"  → "word"
--                       ds<char>           delete surround  e.g. ds(    → word
--                       cs<old><new>       change surround  e.g. cs'"   → "word"

return {
    -- Auto-close brackets and quotes
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        opts  = {
          check_ts = true,
        },
    },

    -- Surround text objects
    {
        "kylechui/nvim-surround",
        version = "*",
        event   = "VeryLazy",
        opts    = {},
    },
}
