local M = {}

M.keys = {
  { "<leader>br", "<Cmd>BufferLineCloseRight<CR>", desc = "Delete buffers to the right" },
  { "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>", desc = "Delete buffers to the left" },
  { "<S-left>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
  { "<S-right>", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
}

M.opts = {
  options = {
    close_command = function(n) require("mini.bufremove").delete(n, false) end,
    right_mouse_command = function(n) require("mini.bufremove").delete(n, false) end,

    always_show_bufferline = false,
    diagnostics = "nvim_lsp",

    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "center"
      }
    }
  }
}

M.setup = function(_, opts)
  require("bufferline").setup(opts)

  vim.api.nvim_create_autocmd(
    "BufAdd",
    {
      callback = function()
        vim.schedule(function()
          pcall(nvim_bufferline)
        end)
      end
    }
  )
end

M.init = function()
  return {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    keys = M.keys,
    opts = M.opts,
    config = M.setup
  }
end

return M
