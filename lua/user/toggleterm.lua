local M = {
    'akinsho/toggleterm.nvim', version = "*", config = true,
}

function M.config()
    local wk = require("which-key")
    wk.add({
        { "<Leader>t", "<cmd>ToggleTerm<cr>", desc = "Toggle Terminal" },
    })
    require("toggleterm").setup{
      size = 20,
      --open_mapping = [[<Leader>t]], -- or { [[<c-\>]], [[<c-¥>]] } if you also use a Japanese keyboard.
      hide_numbers = true, -- hide the number column in toggleterm buffers
      autochdir = false, -- when neovim changes it current directory the terminal will change it's own when next it's opened
      start_in_insert = true,
      --terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
      persist_size = true,
      persist_mode = true, -- if set to true (default) the previous terminal mode will be remembered
      direction = "float", -- here you could change the type of the terminal you get vertical | horizontal | float | tab
      close_on_exit = true, -- close the terminal window when the process exits
       -- Change the default shell. Can be a string or a function returning a string
      --shell = vim.o.shell,
      auto_scroll = true, -- automatically scroll to the bottom on terminal output
      float_opts = {
        -- The border key is *almost* the same as 'nvim_open_win'
        -- see :h nvim_open_win for details on borders however
        -- the 'curved' border is a custom border type
        -- not natively supported but implemented in this plugin.
        border = 'curved', --other options supported by win open
        -- like `size`, width, height, row, and col can be a number or function which is passed the current terminal
        winblend = 0,

        title_pos = 'center' --position of the title of the floating window
  },
}
end

return M
