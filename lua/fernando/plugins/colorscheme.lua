--[[ return {
  "folke/tokyonight.nvim",
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "night",
    })
    vim.cmd("colorscheme tokyonight")
  end,
} ]]

-- return {
--   "loctvl842/monokai-pro.nvim",
--   config = function()
--     require("monokai-pro").setup({
--       transparent_background = false,
--       filter = "ristretto",
--     })
--     vim.cmd("colorscheme monokai-pro")
--   end,
-- }

--[[ return {
  "scottmckendry/cyberdream.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("cyberdream").setup({
      transparent = true,
      italic_comments = false,
      terminal_colors = true,
    })
    vim.cmd("colorscheme cyberdream")
  end,
} ]]

--[[ return {
  "Shatur/neovim-ayu",
  priority = 1000,
  config = function()
    require("ayu").setup({
      terminal = false,
    })
    vim.cmd("colorscheme ayu")
  end,
} ]]

--[[ return {
  "cpea2506/one_monokai.nvim",
  priority = 1000,
  config = function()
    require("one_monokai").setup({
      transparent = true,
    })
    vim.cmd("colorscheme one_monokai")
  end,
} ]]

return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      background = { -- :h background
        light = "latte",
        dark = "mocha",
      },
      transparent_background = false, -- disables setting the background color.
      show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
      term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
      dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
      },
      no_italic = false, -- Force no italic
      no_bold = false, -- Force no bold
      no_underline = false, -- Force no underline
      styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
      },
      color_overrides = {},
      custom_highlights = {},
      default_integrations = true,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
      },
    })
    vim.cmd("colorscheme catppuccin")
  end,
}
