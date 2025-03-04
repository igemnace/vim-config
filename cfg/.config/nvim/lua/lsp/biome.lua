local module = {}

function module.start()
  -- find the root dir
  local root_file = vim.fs.find({ 'biome.json' }, {
    path = vim.fn.expand('%:p:h'),
    upward = true,
  })[1]
  local root_dir = vim.fs.dirname(root_file)

  -- start and configure the LSP server
  if root_dir and vim.fn.exepath('npx') then
    vim.lsp.start({
      name = 'biome',
      cmd = {'npx', 'biome', 'lsp-proxy'},
      root_dir = root_dir,
    })
    vim.diagnostic.config({ virtual_text = false, signs = false })
  end
end

return module
