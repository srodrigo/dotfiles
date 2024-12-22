vim.api.nvim_create_autocmd('FileType', {
  -- This handler will fire when the buffer's 'filetype' is "lua"
  pattern = 'lua',
  callback = function(ev)
    vim.lsp.start({
      name = 'lua_ls',
      cmd = { 'lua-language-server' },
      root_dir = vim.fs.root(ev.buf, { ".git", ".luarc.json", "lsp.workspace.marker" }),
      settings = {
        Lua = {
          completion = {
            callSnippet = 'Replace',
          },
          -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
          -- diagnostics = { disable = { 'missing-fields' } },
          workspace = {
            library = { '${3rd}/love2d/library', },
          },
        },
      }
    })
  end,
})
