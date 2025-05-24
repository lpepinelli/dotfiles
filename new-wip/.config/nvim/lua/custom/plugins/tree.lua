local function my_on_attach(bufnr)
  local api = require 'nvim-tree.api'

  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', '<C-E>', function()
    api.tree.toggle { file_path = true }
  end, opts 'Toggle nvimtree')

  vim.keymap.set('n', ' ', api.node.open.edit, opts 'Open')
  vim.keymap.set('n', 'n', api.fs.create, opts 'Create File or Directory')
  vim.keymap.set('n', 'r', api.fs.rename_sub, opts 'Rename: Omit Filename')
  vim.keymap.set('n', 'd', api.fs.trash, opts 'Trash')
end

return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      on_attach = my_on_attach,
    }

    local api = require 'nvim-tree.api'

    -- vim.keymap.set('n', '<C-E>', ':NvimTreeToggle<CR>', { noremap = true })
    vim.keymap.set('n', '<C-E>', function()
      api.tree.toggle { file_path = true }
    end, { noremap = true })
  end,
}
