vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set({ 'i', 'n', 'v' }, '<C-s>', '<cmd>:w<CR><Esc>')
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Window navigation
vim.keymap.set('n', '<C-h>', '<C-w><C-h>')
vim.keymap.set('n', '<C-l>', '<C-w><C-l>')
vim.keymap.set('n', '<C-j>', '<C-w><C-j>')
vim.keymap.set('n', '<C-k>', '<C-w><C-k>')

vim.keymap.set('n', '<C-x>', '<cmd>:bd<CR>', { desc = 'Buffer delete' })
vim.keymap.set('n', '<C-q>', '<cmd>:qall<CR>', { desc = 'close nvim' })


-- Folding keymaps
vim.keymap.set('n', 'zR', vim.cmd.foldopen, { desc = 'Open all folds' })
vim.keymap.set('n', 'zM', vim.cmd.foldclose, { desc = 'Close all folds' })
vim.keymap.set('n', 'za', 'za', { desc = 'Toggle fold under cursor' })
vim.keymap.set('n', 'zc', 'zc', { desc = 'Close fold under cursor' })
vim.keymap.set('n', 'zo', 'zo', { desc = 'Open fold under cursor' })

vim.keymap.set('n', ']z', ']z', { desc = 'Jump to next fold' })
vim.keymap.set('n', '[z', '[z', { desc = 'Jump to previous fold' })

-- Buffer navigation
vim.keymap.set('n', '<S-h>', '<cmd>BufferLineCyclePrev<CR>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<S-l>', '<cmd>BufferLineCycleNext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<leader>bp', '<cmd>BufferLineTogglePin<CR>', { desc = 'Toggle pin buffer' })
vim.keymap.set('n', '<leader>bP', '<cmd>BufferLineGroupClose ungrouped<CR>', { desc = 'Delete non-pinned buffers' })
vim.keymap.set('n', '<leader>bo', '<cmd>BufferLineCloseOthers<CR>', { desc = 'Delete other buffers' })
vim.keymap.set('n', '<leader>br', '<cmd>BufferLineCloseRight<CR>', { desc = 'Delete buffers to the right' })
vim.keymap.set('n', '<leader>bl', '<cmd>BufferLineCloseLeft<CR>', { desc = 'Delete buffers to the left' })
