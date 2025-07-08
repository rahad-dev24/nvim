return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    local toggleterm = require("toggleterm")
    toggleterm.setup({
      size = 15,
      open_mapping = [[<c-\>]],
      hide_numbers = true,
      shade_terminals = true,
      start_in_insert = true,
      insert_mappings = true,
      terminal_mappings = true,
      persist_size = true,
      direction = "horizontal",
      close_on_exit = true,
      shell = vim.o.shell,
    })

    -- Terminal instances (reused to toggle)
    local Terminal = require("toggleterm.terminal").Terminal
    local term_horizontal = Terminal:new({ direction = "horizontal", hidden = true })
    local term_vertical = Terminal:new({ direction = "vertical", size = 80, hidden = true })
    local term_float = Terminal:new({ direction = "float", hidden = true })

    -- NvChad-style keymaps
    vim.keymap.set("n", "<leader>th", function()
      term_horizontal:toggle()
    end, { desc = "ToggleTerm horizontal" })

    vim.keymap.set("n", "<leader>tv", function()
      term_vertical:toggle()
    end, { desc = "ToggleTerm vertical" })

    vim.keymap.set("n", "<leader>tt", function()
      term_float:toggle()
    end, { desc = "ToggleTerm float" })
  end,
}
