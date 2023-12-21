require "michael.lazy"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.textwidth = 90
vim.opt.ignorecase = true
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.tabstop = 1
-- vim.opt.clipboard =unnamed
-- Press Tab to save and switch to the next buffer
vim.api.nvim_set_keymap(
  "n",
  "<Tab>",
  [[:if &modifiable && !&readonly && &modified | write | endif | bnext<CR>]],
  { noremap = true, silent = true }
)

-- Press Shift+Tab to save and switch to the previous buffer
vim.api.nvim_set_keymap(
  "n",
  "<S-Tab>",
  [[:if &modifiable && !&readonly && &modified | write | endif | bprevious<CR>]],
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<leader>bd", ":bdelete<CR>", { noremap = true })
