-- Mapping data with "desc" stored directly by vim.keymap.set().
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)

return {
    -- Normal mode.
    n = {
        -- Basic shorcuts.
        ["<C-s>"] = { ":w<cr>", desc = "Save File" },
        -- Refactor mappings.
        ["<leader>r"] = { name = " Refactor" },
        ["<leader>rr"] = { function() require("refactoring").select_refactor() end, desc = "Selection refactor" },
    },
    -- Visual mode.
    v = {
        -- Refactor mappings.
        ["<leader>r"] = { name = " Refactor" },
        ["<leader>rr"] = { function() require("refactoring").select_refactor() end, desc = "Selection refactor" }
    }
}