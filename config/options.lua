-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.colorcolumn = "80"
vim.opt.wrap = true
vim.opt.list = true
vim.opt.shell = (vim.fn.executable("fish") == 1) and "fish" or "bash"

vim.filetype.add({
  extension = {
    gvy = "groovy",
    gy = "groovy",
    gsh = "groovy",
  },
})
