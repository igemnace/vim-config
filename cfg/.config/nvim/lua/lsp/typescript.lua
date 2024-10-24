local module = {}

function module.start()
  -- find the root dir
  local root_file = vim.fs.find({ 'package.json' }, {
    path = vim.fn.expand('%:p:h'),
    upward = true,
  })[1]
  local root_dir = vim.fs.dirname(root_file)

  -- run only if root dir and langserver are available
  if root_dir and vim.fn.exepath('typescript-language-server') then
    -- start the LSP server
    vim.lsp.start({
      -- use filetype as server name, so server is reused across same filetype
      -- but e.g. typescript and typescriptreact get two separate servers, two language ids
      name = 'typescript',
      cmd = {'typescript-language-server', '--stdio'},
      root_dir = root_dir,
    })

    -- i've decided automatic diagnostics is fine, but i don't want all the UI -- it wrecks my attention
    vim.diagnostic.config({ virtual_text = false, signs = false })
  end
end

return module
