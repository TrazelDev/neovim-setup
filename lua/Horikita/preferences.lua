-- relative line numbers:
vim.opt.number = true
vim.opt.relativenumber = true


-- 4 space indeting
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true


-- the cursor is stoping 8 lines before the end when you scroll down
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")


-- puts a colored colmn at char 90 so you know when you wrote too much in one line
vim.opt.colorcolumn = "90"
