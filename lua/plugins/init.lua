return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    opts = function ()
      return require "configs.null-ls"
    end
  },
  {
    "windwp/nvim-ts-autotag",
    ft = {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
    },
    config = function ()
      require("nvim-ts-autotag").setup()
    end
  },

  {
  	"nvim-treesitter/nvim-treesitter",
    opts = function ()
      local opts = {}
      opts.ensure_installed = {
        "lua",
        "javascript",
        "typescript",
        "tsx",
      }
      return opts
    end
  },

  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc="Open lazy git"},
    }
  },
  {
    "folke/todo-comments.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-lua/plenary.nvim"},
    opts = {}
  },
  {
    "kylechui/nvim-surround",
    version="*",
    event = "VeryLazy",
    config = function ()
      require("nvim-surround").setup({})
    end
  },
}
