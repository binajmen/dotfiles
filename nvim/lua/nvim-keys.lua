local keys = {}

function keys.init()
  -- No arrow key allowed
  vim.keymap.set('n', '<up>', '<nop>', { silent = true })
  vim.keymap.set('n', '<down>', '<nop>', { silent = true })
  vim.keymap.set('n', '<left>', '<nop>', { silent = true })
  vim.keymap.set('n', '<right>', '<nop>', { silent = true })

  -- Remove macro key since I don't use it
  vim.keymap.set('n', 'q', '<nop>', { silent = true })

  -- Clear search with <esc>
  vim.keymap.set({ 'i', 'n' }, '<esc>', '<cmd>noh<cr><esc>', { desc = 'Escape and clear hlsearch', silent = true })

  -- Save
  vim.keymap.set('n', '<C-S>', '<CMD>w<CR>', { silent = true, desc = 'Save file' })

  -- Window cursor movement
  vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Go to left window', silent = true })
  vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Go to lower window', silent = true })
  vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Go to upper window', silent = true })
  vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Go to right window', silent = true })
  -- Duplicates from the first file
  vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
  vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
  vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
  vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

  -- Resize window
  vim.keymap.set('n', '<S-Up>', '<CMD>resize +2<CR>', { desc = 'Increase window height', silent = true })
  vim.keymap.set('n', '<S-Down>', '<CMD>resize -2<CR>', { desc = 'Decrease window height', silent = true })
  vim.keymap.set('n', '<S-Left>', '<CMD>vertical resize -2<CR>', { desc = 'Decrease window width', silent = true })
  vim.keymap.set('n', '<S-Right>', '<CMD>vertical resize +2<CR>', { desc = 'Increase window width', silent = true })

  -- Others
  vim.keymap.set('n', '<leader>wd', '<C-W>c', { desc = 'Delete window', silent = true })
  vim.keymap.set('n', '<leader>wy', '<C-W>s', { desc = 'Split window below', silent = true })
  vim.keymap.set('n', '<leader>wx', '<C-W>v', { desc = 'Split window right', silent = true })

  -- Tab
  vim.keymap.set('n', '<leader>tt', '<CMD>tabnew<CR>', { desc = 'New Tab', silent = true })
  vim.keymap.set('n', '<leader>td', '<CMD>tabclose<CR>', { desc = 'Close Tab', silent = true })
  vim.keymap.set('n', '<S-h>', '<cmd>tabprevious<cr>', { desc = 'Prev buffer', silent = true })
  vim.keymap.set('n', '<S-l>', '<cmd>tabnext<cr>', { desc = 'Next buffer', silent = true })
  vim.keymap.set('n', '<S-j>', '<cmd>-tabmove<cr>', { desc = 'Move tab to left', silent = true, noremap = true })
  vim.keymap.set('n', '<S-k>', '<cmd>+tabmove<cr>', { desc = 'Move tab to right', silent = true })

  -- Move lines
  vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move line up', silent = true })
  vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move line down', silent = true })

  -- Diagnostic keymaps
  vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
  vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
  vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
  vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

  -- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
  -- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
  -- is not what someone will guess without a bit more experience.
  --
  -- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
  -- or just use <C-\><C-n> to exit terminal mode
  vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
end

return keys
