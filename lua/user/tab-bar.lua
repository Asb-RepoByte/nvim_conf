local M = {
    "romgrk/barbar.nvim",
}

M.config = function()
    require("barbar").setup({
        auto_hide = 1,
    })
end

return M
