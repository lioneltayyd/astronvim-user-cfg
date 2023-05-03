-- Available plugins can be found at https://github.com/AstroNvim/astrocommunity

return {
    "AstroNvim/astrocommunity",
    { import = "astrocommunity.pack.lua", enabled = true },
    { import = "astrocommunity.pack.go", enabled = true },
    { import = "astrocommunity.pack.rust", enabled = true },
    { import = "astrocommunity.pack.python", enabled = true },
    { import = "astrocommunity.editing-support.todo-comments-nvim", enabled = true },
    { import = "astrocommunity.editing-support.refactoring-nvim", enabled = true },
    { import = "astrocommunity.utility.neodim", enabled = true },
}
