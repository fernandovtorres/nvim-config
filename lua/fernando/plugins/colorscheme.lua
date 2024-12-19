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

return {
  "loctvl842/monokai-pro.nvim",
  config = function()
    require("monokai-pro").setup({
      transparent_background = false,
      filter = "ristretto",
    })
    vim.cmd("colorscheme monokai-pro")
  end,
}

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
