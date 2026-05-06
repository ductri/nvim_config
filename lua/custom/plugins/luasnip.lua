-- return {
--     "L3MON4D3/LuaSnip",
--     -- follow latest release.
--     version = "v2.4.0", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
--     -- install jsregexp (optional!).
--     build = "make install_jsregexp",
--     config = function()
--         local ls = require("luasnip")
--
--         vim.keymap.set({"i"}, "<C-k>", function() ls.expand() end, {silent = true})
--         vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
--         vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})
--
--         vim.keymap.set({"i", "s"}, "<C-E>", function()
--             if ls.choice_active() then
--                 ls.change_choice(1)
--             end
--         end, {silent = true})
--
--         require("luasnip.loaders.from_lua").load({paths = "/home/tringuyen/.config/nvim/lua/snippets/luasnippets/"})
--         -- vim.keymap.set('n', '<leader>sv', '<cmd>source ~/.config/nvim/lua/snippets/luasnippets<CR>')
--     end
-- }
--
return {
  "L3MON4D3/LuaSnip",
  config = function()
    local ls = require("luasnip")
    ls.config.setup({ enable_autosnippets = true })
    require("luasnip.loaders.from_lua").load({paths = "/home/tringuyen/.config/nvim/lua/snippets/luasnippets/"})
    require("luasnip.loaders.from_snipmate").load({paths = "/home/tringuyen/.config/nvim/lua/snippets/vim-snippets/snippets/"})

    vim.keymap.set("i", "<Tab>", function()
      if ls.expandable() then
        ls.expand()
      elseif ls.jumpable() then
        ls.jump(1)
      end
    end, { silent = true })

    vim.keymap.set('n', '<leader>sv', '<cmd>source ~/.config/nvim/lua/snippets/luasnippets<CR>')

    vim.api.nvim_create_autocmd("FileType", {
        pattern = "tex", -- Matches the 'python' filetype
        callback = function()
            -- Set buffer-local keymaps here
            vim.keymap.set('n', '<leader>es', ':tabnew ~/.config/nvim/lua/snippets/luasnippets/tex.lua<cr>')
        end,
    })
  end,
}

