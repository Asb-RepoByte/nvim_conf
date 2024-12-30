local M = {
    "rcarriga/nvim-dap-ui",
    dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
}

M.config = function()
    require("dapui").setup()
    local dap, dapui = require("dap"), require("dapui")
    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end
    vim.fn.sign_define('DapBreakpoint',{ text ='🟥', texthl ='', linehl ='', numhl =''})
    vim.fn.sign_define('DapStopped',{ text ='->', texthl ='', linehl ='', numhl =''})
    local wk = require("which-key")
    wk.add{
        {"<leader>?", function()
            dapui.eval(nil, {enter = true })
        end, desc = "show value"},
    }

end

return M
