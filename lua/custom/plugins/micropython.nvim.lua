return {
  'jim-at-jibba/micropython.nvim',
  -- dir = '~/proj/micropython.nvim/',
  dependencies = { 'akinsho/toggleterm.nvim', 'stevearc/dressing.nvim' },
  ft = 'python',
  keys = {
    { '<leader>mr', '<cmd>MPRepl<CR>', desc = '[M]icropython Start [r]epl' },
    { '<leader>mu', '<cmd>MPUpload<CR>', desc = '[M]icropython [U]pload current buffer' },
    { '<leader>mx', '<cmd>MPRun<CR>', desc = '[M]icropython E[x]ecute current buffer' },
  },
}
