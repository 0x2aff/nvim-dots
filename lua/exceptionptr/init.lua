require("exceptionptr.options") -- Global Options
require("exceptionptr.keymap") -- Keymaps

local bootstrap = require("exceptionptr.bootstrap")

-- Bootstrapping Lazy

vim.opt.runtimepath:prepend(vim.fn.stdpath("data") .."/lazy/lazy.nvim")
local isOk, lazy = pcall(require, "lazy")

if not isOk then
    vim.notify(("%s: Trying to install lazy.nvim")
      :format(debug.getinfo(1).source), vim.log.levels.DEBUG)

    bootstrap.lazy.install()

    isOk, lazy = pcall(require, "lazy")

    if not isOk then
      local failMsg = "Can't load lazy module. Installation probably failed!"
      error(("%s: %s"):format(debug.getinfo(1).source, failMsg))
    end
end

-- Handle Plugins

local plugins = {
  require("exceptionptr.plugins.editor.treesitter").init(),
  require("exceptionptr.plugins.editor.whichkey").init(),

  require("exceptionptr.plugins.ui.tokyonight").init(),
  require("exceptionptr.plugins.ui.telescope").init(),
  require("exceptionptr.plugins.ui.nvimtree").init(),
  require("exceptionptr.plugins.ui.bufferline").init(),
}

require("lazy").setup(plugins)
