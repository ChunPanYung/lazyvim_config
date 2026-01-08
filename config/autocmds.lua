-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "cs", "groovy", "json", "java", "hurl", "ps1", "md" },
  callback = function()
    vim.bo.shiftwidth = 4
    vim.bo.tabstop = 4
    vim.bo.expandtab = true
  end,
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "go", "bash", "fish", "sh" },
  callback = function()
    vim.bo.shiftwidth = 4
    vim.bo.tabstop = 4
    vim.bo.expandtab = false
  end,
})

-- Remove trailing whitespace
vim.api.nvim_create_user_command("Trimspace", function()
  vim.cmd([[%s/\s\+$//e]])
end, {})

-- Replace '\n' with actual newline
vim.api.nvim_create_user_command("Replacenewline", function()
  vim.cmd([[%s/\\n/\r/g]])
end, {})

-- Disable shellcheck on .env file
local lsp_hacks = vim.api.nvim_create_augroup("LspHacks", { clear = true })
vim.api.nvim_create_autocmd({ "BufNewFile", "BufReadPost" }, {
  group = lsp_hacks,
  pattern = "*.env*",
  callback = function(e)
    vim.diagnostic.enable(false, { bufnr = e.buf })
  end,
})

vim.cmd([[
command DiffOrig vert new | set buftype=nofile | read ++edit # | 0d_
       \ | diffthis | wincmd p | diffthis

]])
