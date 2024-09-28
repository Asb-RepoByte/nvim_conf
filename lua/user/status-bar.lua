local M = {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
}

M.config = function()

    local sign_column_hl = vim.api.nvim_get_hl_by_name("SignColumn", true)
    local sign_column_bg = sign_column_hl.background
    -- Set the winbar background to remain the same
    vim.api.nvim_set_hl(0, 'WinBar', { bg = sign_column_bg })  -- Or specify the desired background color
    vim.api.nvim_set_hl(0, 'WinBarNC', { bg = sign_column_bg })  -- Or specify the desired background color
    local function get_location()
        local nested = require("nvim-navic").get_location()
        if string.len(nested) > 0 then nested = nested
        else nested = "%f"
        end
        return nested
    end
    require('lualine').setup({
        options = {
            theme = "gruvbox",
            globalstatus = true,
        },
        winbar = {
            lualine_c = { get_location }
        },
        inactive_winbar = {
            lualine_c = {"%f"},
        }
    })
end

return M
