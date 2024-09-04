local M = {
    "goolord/alpha-nvim",
    dependencies = { "kyazdani42/nvim-web-devicons" },
}

function M.config()
    require("alpha").setup(require("alpha.themes.startify").config)

    -- Configure alpha.nvim to display ASCII art on startup
    require("alpha").setup({
      layout = {
        { type = "padding", val = 1 },
        {
          type = "text",
          val = require("ascii").art.other.bimo.gunter,  -- Set specific art piece
          opts = {
            position = "center",
            hl = "String",
          },
        },
        { type = "padding", val = 2 },
        -- Other sections of your dashboard configuration go here
        {
          type = "group",
          val = {
            {
              type = "text",
              val = "Welcome to Neovim",
              opts = {
                position = "center",
                hl = "Type",
              },
            },
            {
              type = "padding",
              val = 1,
            },
            {
              type = "text",
              val = "Press <leader>ff to find files",
              opts = {
                position = "center",
                hl = "Keyword",
              },
            },
          },
        },
      },
      opts = {
        margin = 5,
      },
})
end

return M
