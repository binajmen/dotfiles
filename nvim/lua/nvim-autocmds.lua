local autocmds = {}

local function augroup(name)
  return vim.api.nvim_create_augroup('custom_au_' .. name, { clear = true })
end

function autocmds.init()
  vim.api.nvim_create_autocmd({ 'VimResized' }, {
    group = augroup 'resize_splits',
    callback = function()
      vim.cmd 'tabdo wincmd ='
    end,
  })

  -- Highlight when yanking (copying) text
  -- Try it with `yap` in normal mode
  -- See `:help vim.highlight.on_yank()`
  vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = augroup 'kickstart-highlight-yank',
    callback = function()
      vim.highlight.on_yank()
    end,
  })
end

return autocmds
