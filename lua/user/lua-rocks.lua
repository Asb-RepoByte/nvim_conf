local M = {
  "vhyrro/luarocks.nvim",
  priority = 1000, -- Very high priority is required, luarocks.nvim should run as the first plugin in your config.
  config = true,
}

M.config = function()
    require("luarocks-nvim").setup()
end

return M
