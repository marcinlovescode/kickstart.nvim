return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require('neo-tree').setup {
      mappings = {
      },
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignore = false
        }
      }

    }
  end,
  vim.keymap.set('n', '<F1>', '<Cmd>Neotree toggle<CR>'),
  vim.keymap.set('n', '<leader><F1>', '<Cmd>Neotree reveal<CR>')
}
