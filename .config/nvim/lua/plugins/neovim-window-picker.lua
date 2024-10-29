return {
  {
    "s1n7ax/nvim-window-picker",
    config = function()
      require("window-picker").setup()
      -- Keymap to trigger window picker
      vim.keymap.set("n", "<leader>sw", function()
        local picked_window_id = require("window-picker").pick_window()
        if picked_window_id then
          vim.api.nvim_set_current_win(picked_window_id)
        end
      end, { silent = true })
    end
  }
}
