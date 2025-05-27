return { -- Autoformat
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format { async = true, lsp_format = 'fallback' }
      end,
      mode = '',
      desc = '[F]ormat buffer',
    },
  },
  opts = {
    notify_on_error = false,
    format_on_save = function(bufnr)

      local disable_filetypes = { c = true, cpp = true }
      if disable_filetypes[vim.bo[bufnr].filetype] then
        return nil
      else
        return {
          timeout_ms = 500,
          lsp_format = 'fallback',
        }
      end
    end,
    -- ragged formatting
    -- format_on_save = function(bufnr)
    --   -- Only format changed lines
    --   local function get_changed_range()
    --     local start_line, end_line
    --     -- Use `:h vim.diff`
    --     local ok, changes = pcall(vim.fn.systemlist, 'git diff --unified=0 --no-color ' .. vim.fn.shellescape(vim.fn.expand '%'))
    --     if not ok then
    --       return nil
    --     end
    --     local ranges = {}
    --     for _, line in ipairs(changes) do
    --       local s, e = line:match '^@@ %-%d+,%d+ %+(%d+),?(%d*) @@'
    --       if s then
    --         local start = tonumber(s)
    --         local count = tonumber(e) or 1
    --         table.insert(ranges, { start = start, end_ = start + count - 1 })
    --       end
    --     end
    --     return ranges
    --   end
    --
    --   local ranges = get_changed_range()
    --   if not ranges or vim.tbl_isempty(ranges) then
    --     return
    --   end
    --
    --   -- Run range formatting
    --   for _, range in ipairs(ranges) do
    --     require('conform').format {
    --       bufnr = bufnr,
    --       lsp_fallback = true,
    --       range = {
    --         start = { range.start, 0 },
    --         ['end'] = { range.end_, 0 },
    --       },
    --     }
    --   end
    -- end,
    formatters_by_ft = {
      lua = { 'stylua' },
      css = { 'prettier' },
      html = { 'prettier' },
      typescript = { 'prettierd', 'prettier' },
      javascript = { 'prettierd', 'prettier' },
      typescriptreact = { 'prettierd', 'prettier' },
      javascriptreact = { 'prettierd', 'prettier' },
      python = { 'isort', 'black' },
    },
  },
}

