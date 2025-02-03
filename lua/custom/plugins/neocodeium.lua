return {
  {
    'monkoose/neocodeium',
    event = 'VeryLazy',
    config = function()
      local neocodeium = require 'neocodeium'
      neocodeium.setup {
        manual = true,
        filetypes = {
          TelescopePrompt = false,
          ['dap-repl'] = false,
        },
      } -- create an autocommand which closes cmp when ai completions are displayed
      vim.api.nvim_create_autocmd('User', {
        pattern = 'NeoCodeiumCompletionDisplayed',
        callback = function()
          require('cmp').abort()
        end,
      })
      vim.keymap.set('i', 'ƒ', neocodeium.accept, { desc = '<A-f>Neocodeium accept' })
      vim.keymap.set('i', 'Ω', neocodeium.accept_word, { desc = '<A-w>Neocodeium accept Word' })
      vim.keymap.set('i', '', neocodeium.accept, { desc = '<A-a>Neocodeium accept line' })
      vim.keymap.set('i', 'é', neocodeium.cycle_or_complete, { desc = '<A-e>Neocodeium cycle or complEte' })
      vim.keymap.set('i', '®', function()
        neocodeium.cycle_or_complete(-1)
      end, { desc = '<A-r>Neocodeium cycle or complEte(-1)' })
      vim.keymap.set('i', 'ç', neocodeium.clear, { desc = '<A-c>Neocodeium Clear' })
    end,
  },
}
