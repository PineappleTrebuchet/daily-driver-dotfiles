return {
  'nvim-java/nvim-java',
  config = function()
    require('java').setup()
    vim.lsp.enable('jdtls')
    -- require("lspconfig").jdtls.setup({})
  end,
}
