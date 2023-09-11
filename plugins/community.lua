return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity
  -- { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.markdown-and-latex.glow-nvim" },
  {
    "ellisonleao/glow.nvim",
    event = "VimEnter",
    opts = {
      -- glow_path = "", -- will be filled automatically with your glow bin in $PATH, if any
      -- install_path = "/home/hyulim/.local/bin", -- default path for installing glow binary
      border = "shadow", -- floating window border config
      style = "dark", -- filled automatically with your current editor background, you can override using glow json style
      pager = false,
      width = 80,
      height = 100,
      width_ratio = 0.7, -- maximum width of the Glow window compared to the nvim window size (overrides `width`)
      height_ratio = 0.7,
    },
  },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  {
    "folke/todo-comments.nvim",
    -- sudo apt install ripgrep
    -- brew install ripgrep
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  { -- This plugin
    "Zeioth/compiler.nvim",
    cmd = {"CompilerOpen", "CompilerToggleResults", "CompilerRedo"},
    dependencies = { "stevearc/overseer.nvim" },
    opts = {},
  },
  { -- The task runner we use
    "stevearc/overseer.nvim",
    commit = "19aac0426710c8fc0510e54b7a6466a03a1a7377",
    cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
    opts = {
      task_list = {
        direction = "bottom",
        min_height = 25,
        max_height = 25,
        default_detail = 1,
        bindings = { ["q"] = function() vim.cmd("OverseerClose") end },
      },
    },
  },
}
