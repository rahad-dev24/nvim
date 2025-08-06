return {
  'FabijanZulj/blame.nvim',
  config = function()
    require('blame').setup()
  end,
  keys = {
    {
      '<leader>gb',
      '<cmd>BlameToggle virtual<cr>',
      desc = 'Toggle Git Blame (virtual)',
    },
    {
      '<leader>gB',
      '<cmd>BlameToggle window<cr>',
      desc = 'Toggle Git Blame (window)',
    },
  },
}

