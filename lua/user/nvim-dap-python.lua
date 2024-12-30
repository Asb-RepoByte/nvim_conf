local M = {
    "mfussenegger/nvim-dap-python",
}

M.config = function()
    require("dap-python").setup()
end

return M
