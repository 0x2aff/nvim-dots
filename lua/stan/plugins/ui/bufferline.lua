return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",

  opts = {
    options = {
      always_show_bufferline = true,

      close_command = function(n) require("mini.bufremove").delete(n, false) end,
      right_mouse_command = function(n) require("mini.bufremove").delete(n, false) end,

      offsets = {
        {
          filetype = "neo-tree",
          text = "File Explorer",
          highlight = "Directory",
          text_align = "center"
        }
      }
    }
  },

  config = function(_, opts)
    require("bufferline").setup(opts)

    vim.api.nvim_create_autocmd("BufAdd", {
      callback = function()
        vim.schedule(function()
          pcall(nvim_bufferline)
        end)
      end
    })
  end
}
