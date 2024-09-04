local M = {
   "mbbill/undotree",
}

function M.config()
    local status_ok, wk = pcall(require, "which-key")
    if not status_ok then
        return M
    end
    wk.add({
        { "<leader>u", ":UndotreeToggle<cr>", desc = "Toggle Undotree" },
    })
end

return M
