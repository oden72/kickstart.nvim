return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    -- Optional dependencies
    dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
    config = function()
      require('oil').setup {
        columns = { 'icon' },
        keymaps = {
          ['<C-h>'] = false,
          ['˛'] = 'actions.select_split', -- <M-h> on mac
        },
        view_options = {
          show_hidden = true,
        },
        delete_to_trash = true,
        vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' }),
        vim.keymap.set('n', '<space>--', require('oil').toggle_float, { desc = 'Open parent directory in floating window' }),
      }
    end,
  },
}
