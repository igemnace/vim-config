local module = {}

function module.start()
  -- find the root dir
  local root_file = vim.fs.find({ 'Cargo.toml' }, {
    path = vim.fn.expand('%:p:h'),
    upward = true,
  })[1]
  local root_dir = vim.fs.dirname(root_file)

  -- start and configure the LSP server
  if root_dir and vim.fn.exepath('rust-analyzer') then
    vim.lsp.start({
      name = 'rust-analyzer',
      cmd = {'rust-analyzer'},
      root_dir = root_dir,
    })
    vim.diagnostic.config({ virtual_text = false, signs = false })
  end
end

return module
