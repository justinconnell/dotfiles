return
  {
    "nvim-neo-tree/neo-tree.nvim",
    version = "*",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    cmd = "Neotree",
    keys = {
      { "\\", ":Neotree reveal<cr>", desc = "NeoTree reveal" },
    },
    opts = {
      close_if_last_window = true,
      hide_root_node = true,
      filtered_items = {
        hide_dotfiles = false,
        hide_by_name = {
          ".git",
        },
      },
      group_empty_dirs = false,
      filesystem = {
        window = {
          mappings = {
            ["\\"] = "close_window",
          },
          width = 30,
        },
      },
      event_handlers = {
        {
          event = "file_open_requested",
          handler = function()
            require("neo-tree.command").execute({ action = "close" })
          end,
        },
      },
    },
  }
