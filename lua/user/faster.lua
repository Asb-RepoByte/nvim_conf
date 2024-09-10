local M = {
    "PHSix/faster.nvim",
    event = {"VimEnter *"},
}

M.config = function()
    vim.api.nvim_set_keymap('n', 'j', '<Plug>(faster_move_j)', {noremap=false, silent=true})
    vim.api.nvim_set_keymap('n', 'k', '<Plug>(faster_move_k)', {noremap=false, silent=true})
end

return M
