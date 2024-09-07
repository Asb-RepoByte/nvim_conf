local M = {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000
}

M.config = function()
    vim.cmd.colorscheme("catppuccin")
end

return M
