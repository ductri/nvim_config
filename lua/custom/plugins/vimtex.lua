return {
  "lervag/vimtex",
  lazy = false,     -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_method = 'zathura'
    vim.g.vimtex_log_ignore = {'Overfull'}
    vim.g.vimtex_quickfix_ignore_filters = {'Overfull'}
    vim.g.vimtex_quickfix_enabled = 1
    vim.g.vimtex_quickfix_mode = 0
    vim.g.vimtex_quickfix_open_on_warning = 0
    vim.g.tex_flavor = 'latex'
    vim.keymap.set("n", "<localleader><localleader>", ":VimtexView<CR>", { silent = true})
  end
}

