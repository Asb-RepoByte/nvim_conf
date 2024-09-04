local M = {
    "LunarVim/bigfile.nvim"
}

M.config = function()
    require("bigfile").setup {
        filesize = 2,
    }
end

return M
