return {
  {
    'tpope/vim-fugitive', -- Git Wrapper for Vim
    config = function()
      -- vim fugitive
      vim.keymap.set('n', '<leader>gs', ':Git status', { noremap = true, desc = '[g]it [status]' })
      vim.keymap.set('n', '<leader>ga', ':Git add ', { noremap = true, desc = '[g]it [a]dd ' })
      vim.keymap.set('n', '<leader>gA', ':Git add .<CR>', { noremap = true, desc = 'git add .' })
      vim.keymap.set('n', '<leader>gp', ':Git push --quiet <CR>', { noremap = true, desc = 'git push' })
      vim.keymap.set('n', '<leader>gc', ':Git commit -qam "', { noremap = true, desc = 'git commit -am' })
    end,
  },
  {
    'junegunn/gv.vim', -- git commit browser
  },
  -- Here is a more advanced example where we pass configuration
  -- options to `gitsigns.nvim`. This is equivalent to the following Lua:
  --    require('gitsigns').setup({ ... })
  --
  -- See `:help gitsigns` to understand what the configuration keys do
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
    vim.keymap.set('n', '<leader>gi', ':Gitsigns preview_hunk_inline<CR>', { noremap = true, desc = '[g]itsigns preview hunk [i]nline' }),
  },
}
