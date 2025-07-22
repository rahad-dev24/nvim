return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()

    local list = harpoon:list()

    -- Add current file
    vim.keymap.set('n', '<leader>a', function()
      list:append()
    end, { desc = 'Harpoon: Add current file' })

    -- Remove current file
    vim.keymap.set('n', '<leader>u', function()
      list:remove()
    end, { desc = 'Harpoon: Remove current file' })

    -- Remove specific index
    for i = 1, 10 do
      vim.keymap.set('n', '<leader>r' .. i, function()
        list:remove_at(i)
      end, { desc = 'Harpoon: Remove file ' .. i })
    end

    -- Toggle menu
    vim.keymap.set('n', '<leader>h', function()
      harpoon.ui:toggle_quick_menu(list)
    end, { desc = 'Harpoon: Toggle menu' })

    -- Jump to file
    for i = 1, 10 do
      vim.keymap.set('n', '<leader>' .. i, function()
        list:select(i)
      end, { desc = 'Harpoon: Go to file ' .. i })
    end
  end,
}
