local M = {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
}

M.config = function()
    require("snacks").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        bigfile = { enabled = true },
        notifier = { enabled = true },
        quickfile = { enabled = true },
        statuscolumn = { enabled = true },
        words = { enabled = true },
    })
end

return M
