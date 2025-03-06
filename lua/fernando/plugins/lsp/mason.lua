return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        "clangd", -- c
        "ruff", -- python
        "lua_ls", -- lua
        "pyright", -- python
        "rust_analyzer", -- rust
        "vhdl_ls", -- vhdl
        "gopls", -- go
        "ts_ls", -- typescript
        "hls", -- haskell
        "docker_compose_language_service", -- docker
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "clang-format",
        "stylua",
        "isort",
        "black",
        "cmakelint",
      },
    })
  end,
}
