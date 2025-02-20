local M = {
    "stevearc/oil.nvim",
}

M.config = function()
    require("oil").setup()
    local wk = require("which-key")
    wk.add({
        {"<leader>e", "<cmd>Oil .<CR>", desc="Open Oil"},
    })
end

return M
