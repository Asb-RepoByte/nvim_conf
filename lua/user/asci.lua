local M = {
    "MaximilianLloyd/ascii.nvim",
    dependencies = {
        "MunifTanjim/nui.nvim",
    }
}

function M.config()
    local options = {
        header = {
        val = require("ascii").art.animals.dogs.lucky,
        }
    }
end
return M
