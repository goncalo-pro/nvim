return {
    "nvim-tree/nvim-tree.lua",

    config = function()
        local tree = require("nvim-tree")

        tree.setup()
    end,
}
