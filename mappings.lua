return {
  n = {
    ["<F2>"] = {
      function()
        if vim.bo.filetype ~= "neo-tree" then
          vim.cmd.Glow "subject/subject.ko.md"
        end
      end,
      --"<cmd>Glow subject/subject.ko.md<cr>",
    },
    ["<F3>"] = {
      "<cmd>Neotree toggle float<cr>", desc = "Toggle Explorer",
    },
    ["<leader>e"] = {
      "<cmd>Neotree toggle float<cr>", desc = "Toggle Explorer",
    },
    ["<leader>o"] = {
      function()
        if vim.bo.filetype == "neo-tree" then
          vim.cmd.wincmd "p"
        else
          vim.cmd.Neotree "focus"
          vim.cmd.Neotree "float"
        end
      end,
      desc = "Toggle Explorer Focus",
    }
  }
}
