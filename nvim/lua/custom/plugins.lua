local plugins = { {
  "nvimtools/none-ls.nvim",
  event = "VeryLazy",
  opts = function()
    return require 'custom.configs.null-ls'
  end
}, {
  "neovim/nvim-lspconfig",
  config = function()
    require "plugins.configs.lspconfig"
    require "custom.configs.lspconfig"
  end
}, {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "typescript-language-server",
      "tailwindcss-language-server",
      "eslint-lsp",
      "prettier",
    }
  }
},
  {
    "windwp/nvim-ts-autotag",
    ft = {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "html",
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end
  }, {
  "nvim-treesitter/nvim-treesitter",
  opts = function()
    opts = require "plugins.configs.treesitter"
    opts.ensure_installed = {
      "lua",
      "javascript",
      "typescript",
      "tsx",
      "go"
    }
    return opts
  end
}, {
  "JoosepAlviste/nvim-ts-context-commentstring",

  config = function()
    require('Comment').setup({
      pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
    })
  end
} }
local plugins = { {
  "nvimtools/none-ls.nvim",
  event = "VeryLazy",
  opts = function()
    return require 'custom.configs.null-ls'
  end
}, {
  "neovim/nvim-lspconfig",
  config = function()
    require "plugins.configs.lspconfig"
    require "custom.configs.lspconfig"
  end
}, {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "typescript-language-server",
      "tailwindcss-language-server",
      "eslint-lsp",
      "prettier",
    }
  }
},
  {
    "windwp/nvim-ts-autotag",
    ft = {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "html",
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end
  }, {
  "nvim-treesitter/nvim-treesitter",
  opts = function()
    opts = require "plugins.configs.treesitter"
    opts.ensure_installed = {
      "lua",
      "javascript",
      "typescript",
      "tsx",
      "go"
    }
    return opts
  end
}, }
return plugins
