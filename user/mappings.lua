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
        ["<leader>H"] = { name = " Harpoon" },
        ["<leader>Ha"] = { function() require("harpoon.mark").add_file() end, desc = "Add file to Harpoon menu" },
        ["<leader>Hu"] = { function() require("harpoon.ui").toggle_quick_menu() end, desc = "Toggle Harpoon menu" },
        ["<leader>Ht"] = { "<cmd>Telescope harpoon marks<cr>", desc = "Toggle Telescope Harpoon ui" },
    },
    -- Visual mode.
    v = {
        -- Refactor mappings.
        ["<leader>r"] = { name = " Refactor" },
        ["<leader>rr"] = { function() require("refactoring").select_refactor() end, desc = "Selection refactor" }
    }
}
