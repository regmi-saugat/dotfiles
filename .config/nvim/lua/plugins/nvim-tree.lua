-- File Explorer / Tree

return {
  -- nvim-tree configuration
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    filters = {
      -- not working this for now. will check later :)
      dotfiles = false,  -- Ensure this is set to false
    },
    actions = {
      open_file = {
        window_picker = {
          enable = false,
        }
      }
    },
  },
  config = function(_, opts)
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    require("nvim-tree").setup(opts)
  end
}

