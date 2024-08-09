local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    error("Error cloning lazy.nvim:\n" .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- [[ Configure and install plugins ]]
require("lazy").setup({
  -- Detect tabstop and shiftwidth automatically
  "tpope/vim-sleuth",
  -- Navigate seamlessly between Vim windows and Tmux panes.
  "christoomey/vim-tmux-navigator",
  -- Automatically close brackets and tags
  {
    "windwp/nvim-autopairs",
    config = true,
  },
  { import = "jc.plugins" },
})
