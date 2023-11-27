local M = {}

M.lazy = {}

M.lazy.install = function()
  local uv = vim.uv or vim.loop
  local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
  
  print(lazypath)

  if not uv.fs_stat(lazypath) then
    vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch=stable",
      lazypath
    })
  end
end

return M
