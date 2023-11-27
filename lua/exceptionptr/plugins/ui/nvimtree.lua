local M = {}

M.setup = function()
  require("nvim-tree").setup()
end

M.init = function()
  return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" }, 
    lazy = false,
    config = M.setup
  }
end

return M
