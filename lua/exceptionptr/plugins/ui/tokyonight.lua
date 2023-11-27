local M = {}

M.setup = function()
  vim.cmd([[colorscheme tokyonight-night]])
end

M.init = function()
  return { 
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = M.setup
  }
end

return M
