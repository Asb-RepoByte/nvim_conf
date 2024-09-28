local M =  {
    'MeanderingProgrammer/markdown.nvim',
    name = 'render-markdown', -- Only needed if you have another plugin named markdown.nvim
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    opts = {
        file_types = { "markdown", "Avante" },
      },
    ft = { "markdown", "Avante" },
}

function M.config()
    require('render-markdown').setup({})
end

return M
