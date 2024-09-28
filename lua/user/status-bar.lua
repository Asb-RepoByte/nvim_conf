local M = {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
}

M.config = function()
    require('lualine').setup({
        options = {
            theme = "gruvbox",
            globalstatus = true,
        },
        inactive_winbar = {
            lualine_c = {"%f"},
        }
    })
end

return M
