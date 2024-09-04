local M = {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000 ,
    config = true,
    opts = ...
}


function M.config()
    vim.cmd.colorscheme("gruvbox")
end

return M
