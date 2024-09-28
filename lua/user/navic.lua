local M = {
    "SmiteshP/nvim-navic"
}

M.config = function()
    require("nvim-navic").setup({
        highlight = true,
    })

    -- Get the background color of the SignColumn
    local sign_column_hl = vim.api.nvim_get_hl_by_name('SignColumn', true)
    local sign_column_bg = sign_column_hl.background
    vim.api.nvim_set_hl(0, 'NavicText', { bg = sign_column_bg })
    vim.api.nvim_set_hl(0, 'NavicSeparator', { bg = sign_column_bg })
    -- Function to update only the background while keeping the current foreground color
    local function update_navic_icon_bg(icon_group)
      -- Get the current foreground color of the icon group
      local hl = vim.api.nvim_get_hl_by_name(icon_group, true)
      local fg_color = hl.foreground

      -- Set the background to the sign column background while keeping the foreground
      if fg_color then
        vim.api.nvim_set_hl(0, icon_group, { fg = fg_color, bg = sign_column_bg })
      end
    end

    -- Apply this to all Navic icons while preserving their foreground color
    if sign_column_bg then
      local navic_icon_groups = {
        'NavicIconsFile', 'NavicIconsModule', 'NavicIconsNamespace', 'NavicIconsPackage',
        'NavicIconsClass', 'NavicIconsMethod', 'NavicIconsProperty', 'NavicIconsField',
        'NavicIconsConstructor', 'NavicIconsEnum', 'NavicIconsInterface', 'NavicIconsFunction',
        'NavicIconsVariable', 'NavicIconsConstant', 'NavicIconsString', 'NavicIconsNumber',
        'NavicIconsBoolean', 'NavicIconsArray', 'NavicIconsObject', 'NavicIconsKey',
        'NavicIconsNull', 'NavicIconsEnumMember', 'NavicIconsStruct', 'NavicIconsEvent',
        'NavicIconsOperator', 'NavicIconsTypeParameter'
      }

      for _, group in ipairs(navic_icon_groups) do
        update_navic_icon_bg(group)
      end
    end
end

return M
