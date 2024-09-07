-- set some options for me
local options = {
	cursorline = true,				-- display a line on the place of the cursor
	mouse = "",					-- set the usebility of the mouse
	number = true,				-- set the number of line to be visible
	relativenumber = true,		-- set the relative number
	tabstop = 4,				-- set the <tab> to 4 spaces
	shiftwidth = 4,				-- set the auto indent to 4 spaces
	autoindent = true,			-- copy the level of tab when going to the next line.
	smartindent = true,			-- automaticaly add a new tab on the next line when need.
	expandtab = true,			-- convert tab to spaces
	signcolumn = "yes",			-- show the thing on the far left
	hidden = true,				-- allow to switch the buffer without need to safe.
	wrap = false,				-- cut the line when to long.
	linebreak = true,			-- cut the line in convenient place.
	scrolloff = 999,				-- set the distance to the end of window when scrolling.
	clipboard = "unnamedplus",	-- set neovim the use the system clipboard.
	ignorecase = true,			-- ignore the upper case when searching.
	smartcase = true,			-- override ingorcase when there is upper case in the search.
	termguicolors = true,		-- set the colors to use the 24bit colors  tui
	splitright = true,			-- forces a new vertical window to be on the right.
	splitbelow = true,			-- forces a new horizontal window to be on the bottom.
    updatetime = 250,           -- make stuff faster
    timeoutlen = 200,           -- also make stuff faster
	foldmethod = "syntax",		-- fold sections of the file base of the syntax of the language.
	foldlevelstart = 99,		-- all the section will be visible with nofolds been apply.
	completeopt = {"menuone", "noinsert", "noselect"},		-- make some condition on the popup menu for auto complition.
    virtualedit = "block",      -- enable virtualedit to select a rectangle in visual block mode
    inccommand = "split",       -- seting the split window to show changes
}

-- actually applaying the options
for key, value in pairs(options) do
	vim.opt[key] = value
end

local undodir = vim.fn.expand("~/dev/.undo")
if vim.fn.isdirectory(undodir) == 0 then
    vim.fn.mkdir(undodir, 'p')
end

vim.opt.undofile = true
vim.opt.undodir = undodir
