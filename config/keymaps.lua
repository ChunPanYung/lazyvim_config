-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.cmd([[
nnoremap <localleader>i :exec "normal i".nr2char(getchar())."\e"<CR>
nnoremap <localleader>a :exec "normal a".nr2char(getchar())."\e"<CR>
]])
