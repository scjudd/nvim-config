-- Tab Spacing
-- https://arisweedler.medium.com/tab-settings-in-vim-1ea0863c5990

-- How many columns of whitespace for a `\t` character?
vim.opt.tabstop = 4
-- How many columns of whitespace for a 'tab' or 'backspace' keypress?
vim.opt.softtabstop = 4
-- How many columns of whitespace for a 'level of indentation'?
vim.opt.shiftwidth = 4
-- Always use spaces, rather than the default mix of tabs and spaces
vim.opt.expandtab = true

-- Line numbering
vim.opt.number = true
vim.opt.relativenumber = true

-- Number of lines to display above and below the cursor
vim.opt.scrolloff = 8
