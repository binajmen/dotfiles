return {
  'zbirenbaum/copilot.lua',
  cmd = 'Copilot',
  event = 'InsertEnter',
  config = function()
    require('copilot').setup {
      copilot_node_command = 'node',
      filetypes = {
        cvs = false,
        gitcommit = false,
        gitrebase = false,
        help = false,
        hgcommit = false,
        markdown = false,
        svn = false,
        yaml = false,
        ['.'] = false,
      },
      panel = {
        enabled = false,
      },
      suggestion = {
        auto_trigger = true,
        debounce = 15,
        enabled = true,
        keymap = {
          accept = '<Tab>',
          accept_line = false,
          accept_word = false,
          dismiss = '<C-]>',
          next = '<M-]>',
          prev = '<M-[>',
        },
      },
    }
  end,
}
