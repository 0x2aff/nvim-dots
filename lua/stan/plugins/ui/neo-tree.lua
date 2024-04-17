return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  cmd = "Neotree",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim"
  },

  init = function()
    if vim.fn.argc(-1) == 1 then
      local stat = vim.uv.fs_stat(vim.fn.argv(0))

      if stat and stat.type == "directory" then
        require("neo-tree")
      end
    end
  end,

  deactivate = function()
    vim.cmd([[Neotree close]])
  end,

  opts = {
    sources = { "filesystem", "buffers" },
    filesystem = {
      bind_to_cwd = false,
      follow_current_file = { enabled = true },
      hijack_netrw_behavior = "open_default",
      use_libuv_file_watcher = true,

      filtered_items = {
        always_show = {
          ".gitignore"
        }
      }
    }
  }
}
