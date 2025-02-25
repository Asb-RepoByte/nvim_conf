local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- Set tab width to 2 spaces for C++, C, and HTML files
vim.api.nvim_create_autocmd("FileType", {
  pattern = {"cpp", "c", "html", "javascriptreact", "javascript"},
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end,
})

vim.cmd([[autocmd BufNewFile,BufRead *.vs,*.fs,*.vert,*.frag set filetype=glsl]])

-- this is my/cheick command for adding a word to the global auto completion
vim.api.nvim_create_user_command("AddVar", function()
    local word = vim.fn.expand("<cword>")  -- Get the word under the cursor
    local project_vars = vim.fn.getcwd() .. "/.project_vars"

    -- Open the file (or create it if it doesn't exist)
    local file = io.open(project_vars, "r")
    if not file then
        file = io.open(project_vars, "w")
    end

    local words = {}

    if file then
        for line in file:lines() do
            words[line] = true  -- Store existing words in a table
        end
        file:close()
    end

    -- If the word is not already in the file, append it
    if not words[word] then
        file = io.open(project_vars, "a")  -- Open in append mode
        if file then
            file:write(word .. "\n")
            file:close()
            print("Added '" .. word .. "' to .project_vars")
        else
            print("Error: Could not write to .project_vars")
        end
    else
        print("'" .. word .. "' is already in .project_vars")
    end
end, {})
