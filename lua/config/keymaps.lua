-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.api.nvim_set_keymap("n", "<leader>l", ":Neotree reveal toggle<CR>", {})

if vim.g.vscode then
  vim.api.nvim_set_keymap(
    "n",
    "<leader>cf",
    "<Cmd>lua require('vscode').call('editor.action.formatDocument')<CR>",
    { desc = "Format" }
  )
  vim.api.nvim_set_keymap(
    "v",
    "<leader>cf",
    "<Cmd>lua require('vscode').call('editor.action.formatSelection')<CR>",
    { desc = "Format" }
  )
  vim.api.nvim_set_keymap(
    "n",
    "<leader>cr",
    "<Cmd>lua require('vscode').call('editor.action.rename')<CR>",
    { desc = "Rename" }
  )
end
