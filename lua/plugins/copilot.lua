return {
  "github/copilot.vim",
  lazy = false,
  config = function()
    vim.g.copilot_no_tab_map = true

    vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', {
      expr = true,
      silent = true,
      noremap = true,
    })

    vim.api.nvim_set_keymap("i", "<C-]>", "<Plug>(copilot-dismiss)", {})
    vim.api.nvim_set_keymap("i", "<M-]>", "<Plug>(copilot-next)", {})
    vim.api.nvim_set_keymap("i", "<M-[>", "<Plug>(copilot-previous)", {})

    -- Set Copilot suggestion color
    vim.api.nvim_set_hl(0, "CopilotSuggestion", {
      fg = "#88BFFB",
      italic = true,
    })
  end,
}
