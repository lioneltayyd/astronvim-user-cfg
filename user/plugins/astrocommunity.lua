return {
    -- available plugins can be found at https://github.com/AstroNvim/astrocommunity
    "AstroNvim/astrocommunity",
    { import = "astrocommunity.pack.lua", enabled = false },
    { import = "astrocommunity.pack.rust", enabled = false },
    { import = "astrocommunity.pack.python", enabled = false },
    { import = "astrocommunity.editing-support.todo-comments-nvim", enabled = true },
    { import = "astrocommunity.editing-support.refactoring-nvim", enabled = true },
    { import = "astrocommunity.utility.neodim", enabled = true },
  }
