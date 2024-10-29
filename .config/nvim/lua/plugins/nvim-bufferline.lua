-- Add Bufferline in LazyVim's plugin manager setup
return {
  {
    "akinsho/bufferline.nvim",
    config = function()
      require("bufferline").setup {
        options = {
          diagnostics = "nvim_lsp",
          offsets = {{ filetype = "NvimTree", text = "File Explorer", padding = 1 }},
          show_buffer_close_icons = false,
          separator_style = "slant",  -- Customize style here
        }
      }
    end
  }
}
