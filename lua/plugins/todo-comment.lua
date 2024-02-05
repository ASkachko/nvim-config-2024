return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    vim.keymap.set("n", "]t", function()
      require("todo-comments").jump_next()
    end, { desc = "Next todo comment" }),

    vim.keymap.set("n", "[t", function()
      require("todo-comments").jump_prev()
    end, { desc = "Previous todo comment" }),
    vim.keymap.set("n", "<leader>ft", ":TodoTelescope<CR>", { silent = true, noremap = true, desc = "Find todo" }),
  },
}
