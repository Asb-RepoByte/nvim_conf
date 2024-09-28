local M = {
    "indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
}

M.config = function()
    require("ibl").setup()
end

return M
