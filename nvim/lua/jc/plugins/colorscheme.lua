return {
  "rose-pine/neovim",
  lazy = false,
  name = "rose-pine",
  priority = 1000,
  config = function()
    local prompt = "#191724"
    require("rose-pine").setup({
      styles = {
        bold = true,
        italic = true,
        transparency = true,
      },
      highlight_groups = {
        TelescopeBorder = { fg = "highlight_high", bg = "none" },
        TelescopeNormal = { bg = "base" },
        TelescopePromptNormal = { bg = "base" },
        TelescopeResultsNormal = { fg = "subtle", bg = "none" },
        TelescopeSelection = { fg = "text", bg = "base" },
        TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
        Floaterm = { bg = prompt },
        FloatermBorder = { bg = prompt, fg = "highlight_low" },
      },
    })
    vim.cmd.colorscheme("rose-pine")
  end,
}
