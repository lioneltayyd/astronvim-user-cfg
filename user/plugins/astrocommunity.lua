-- Reference: ttps://github.com/AstroNvim/astrocommunity

return {
    "AstroNvim/astrocommunity",

    -- Preferred plugins. 
    { import = "astrocommunity.project.project-nvim", enabled = true },
    { import = "astrocommunity.project.nvim-spectre", enabled = true },
    { import = "astrocommunity.editing-support.todo-comments-nvim", enabled = true },
    { import = "astrocommunity.editing-support.refactoring-nvim", enabled = true },
    { import = "astrocommunity.motion.mini-surround", enabled = true },
    { import = "astrocommunity.motion.mini-move", enabled = true },
    { import = "astrocommunity.motion.mini-bracketed", enabled = true },
    { import = "astrocommunity.syntax.vim-easy-align", enabled = true },
    { import = "astrocommunity.diagnostics.trouble-nvim", enabled = true },
    
    -- Uncomment to enable language plugins depending on project.
    { import = "astrocommunity.pack.lua", enabled = true },
    { import = "astrocommunity.pack.go", enabled = true },
    { import = "astrocommunity.pack.rust", enabled = true },
    { import = "astrocommunity.pack.python", enabled = true },
    { import = "astrocommunity.test.neotest", enabled = true },
}
