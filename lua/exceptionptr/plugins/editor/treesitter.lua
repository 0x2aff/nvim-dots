local M = {}

M.setup = function()
  require("nvim-treesitter.configs").setup({
    ensure_installed = { "c", "lua", "vim", "rust", "javascript", "typescript" },
    sync_install = false,
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false
    }
  })
end

M.init = function()
  return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    priority = 900,
    config = M.setup
  }
end

return M;

