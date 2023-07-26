-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.cmd([[
" autoread and load file when focus on buffer
au FocusGained,BufEnter * :silent! !
]])

--[[ User Created Commands ]]
vim.api.nvim_create_user_command("Trimblank", function()
  vim.cmd([[
    " Replace multiple blank lines with a single blank line
    silent! %s/\(\n\n\)\n\+/\1/
    " Trim final newline
    silent! v/\_s*\S/d
    " Clear all highlight
    nohlsearch
  ]])
end, {})

vim.api.nvim_create_user_command("Trimspace", function()
  vim.cmd([[
    " Remove trailing white spaces
    %s/\s\+$//e
  ]])
end, {})
