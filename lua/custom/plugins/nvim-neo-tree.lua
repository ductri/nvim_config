return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
    'nvim-tree/nvim-web-devicons', -- optional, but recommended
  },
  lazy = false, -- neo-tree will lazily load itself
  enabled = true,
  opts = {
    window = {
      mappings = {
        ['w'] = '',
        ['/'] = '',
        ['z'] = '',
        ['y'] = '',
        ['s'] = {
            'open_leftabove_vs',
        },
      },
    },
    filesystem = {
      bind_to_cwd = false,
    },
  },
  config = function(_, opts)
    require('neo-tree').setup(opts)
    vim.keymap.set('n', '<F3>', ':Neotree source=filesystem reveal=true position=left toggle=true<CR>')
    -- require("neo-tree").setup({
    --   filesystem = {
    --     bind_to_cwd = false,
    --   },
    -- })
  end,
}

