--- Floating terminal
return {
  "voldikss/vim-floaterm",
  keys = {
    { "<C-t>", ":FloatermToggle<CR>" },
    { "<C-t>", "<Esc>:FloatermToggle<CR>", mode = "i" },
    { "<C-t>", "<C-\\><C-n>:FloatermToggle<CR>", mode = "t" },
  },
  cmd = { "FloatermToggle" },
  init = function()
    vim.g.floaterm_width = 0.8
    vim.g.floaterm_height = 0.8
  end,
}
