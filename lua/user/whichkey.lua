local M = {
  "folke/which-key.nvim",
}

function M.config()
  local mappings = {
    { "<leader>;", "<cmd>tabnew | terminal<CR>", desc = "Term" },
    { "<leader>T", group = "Treesitter" },
    { "<leader>a", group = "Tab" },
    { "<leader>aN", "<cmd>tabnew %<cr>", desc = "New Tab" },
    { "<leader>ah", "<cmd>-tabnext<cr>", desc = "Move Left" },
    { "<leader>al", "<cmd>+tabnext<cr>", desc = "Move Right" },
    { "<leader>an", "<cmd>$tabnew<cr>", desc = "New Empty Tab" },
    { "<leader>ao", "<cmd>tabonly<cr>", desc = "Only" },
    { "<leader>b", group = "Buffers" },
    { "<leader>d", group = "Debug/DB" },
    { "<leader>f", group = "Find" },
    { "<leader>g", group = "Git" },
    { "<leader>h", "<cmd>nohlsearch<CR>", desc = "NOHL" },
    { "<leader>l", group = "LSP" },
    { "<leader>p", group = "Plugins" },
    { "<leader>q", "<cmd>bd<CR>", desc = "Close Buffer" },
    { "<leader>t", group = "Test" },
    { "<leader>v", "<cmd>vsplit<CR>", desc = "Split" },
    {"<leader>db", "<cmd>DBUIToggle<CR>", desc="Toogle DBui"}
  }

  local which_key = require "which-key"
  which_key.setup {
    plugins = {
      marks = true,
      registers = true,
      spelling = {
        enabled = true,
        suggestions = 20,
      },
      presets = {
        operators = false,
        motions = false,
        text_objects = false,
        windows = false,
        nav = false,
        z = false,
        g = false,
      },
    },
    }

  local opts = {
    mode = "n", -- NORMAL mode
    prefix = "<leader>",
  }

  which_key.add(mappings, opts)
end

return M
