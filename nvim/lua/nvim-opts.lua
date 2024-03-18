local opts = {}

function opts.init()
  -- Automatically write file when it was changed
  vim.opt.autowrite = true
  -- Read a file when it was changed outside of nvim
  vim.opt.autoread = true
  -- Enable break indent
  vim.opt.breakindent = true
  -- Sync clipboard between OS and Neovim
  vim.opt.clipboard = 'unnamedplus'
  -- Completion options
  vim.opt.completeopt = { 'menu', 'menuone', 'noselect', 'preview' }
  -- Confirm before closing an unsaved buffer
  vim.opt.confirm = true
  -- Show which line your cursor is on
  vim.opt.cursorline = true
  -- Default encoding
  vim.opt.encoding = 'UTF-8'
  -- Use spaces instead of tabs
  vim.opt.expandtab = true
  -- Enable case-insensitive searching unless \C or capital in search
  vim.opt.ignorecase = true
  vim.opt.smartcase = true
  -- Configure how new splits should be opened
  vim.opt.splitbelow = true
  vim.opt.splitright = true
  -- Keep the sign column on by default
  vim.opt.signcolumn = 'yes'
  -- Insert indents automatically
  vim.opt.smartindent = true
  -- Save undo history
  vim.opt.undofile = true
  -- Decrease update time
  vim.opt.updatetime = 250
  vim.opt.timeoutlen = 300
  -- Disable winbar
  vim.opt.winbar = ''
  -- Long lines are not wrapped
  vim.opt.wrap = false
  -- Show line numbers
  vim.opt.number = true
  vim.opt.relativenumber = true
  -- Don't show the mode since it's already in the status line
  vim.opt.showmode = false
  -- Minimal number of screen lines to keep above and below the cursor
  vim.opt.scrolloff = 10
  -- Preview substitutions live as you type
  vim.opt.inccommand = 'split'
  -- Sets specific characters to represent certain whitespace characters
  -- Sets how neovim will display certain whitespace in the editor.
  --  See `:help 'list'`
  --  and `:help 'listchars'`
  vim.opt.list = true
  vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣', eol = '↴' }
  -- Appends the EOL character representation for listchars
  -- vim.opt.listchars:append 'eol:↴' -- or ¬ ?

  -- Enable mouse modei
  vim.opt.mouse = 'a' -- duplicate

  -- Set highlight on search, but clear on pressing <Esc> in normal mode
  vim.opt.hlsearch = true
  vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
end

return opts
