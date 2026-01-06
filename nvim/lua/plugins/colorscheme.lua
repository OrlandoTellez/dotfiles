-- TEMA GRUVBOX
--return {
--  {
--    "iibe/gruvbox-high-contrast",
--    name = "gruvbox-high-contrast",
--    lazy = false,
--    priority = 1000,
--    config = function()
--      -- Opciones para gruvbox-high-contrast
--      vim.g.gruvbox_bold = 0
--      vim.g.gruvbox_italic = 0
--      vim.g.gruvbox_transparent_bg = 0
--      vim.g.gruvbox_contrast_dark = "hard"
--      vim.g.gruvbox_sign_column = "bg1"
--      vim.g.gruvbox_number_column = "bg0"
--      vim.g.gruvbox_color_column = "bg1"
--
--      -- Establecer fondo oscuro
--      vim.o.background = "dark"
--
--      -- Aplicar el tema
--      vim.cmd([[colorscheme gruvbox-high-contrast]])
--
--      -- Ajustes para neo-tree
--      vim.cmd([[hi NeoTreeFloatNormal guifg=#ebdbb2 guibg=#3c3836]])
--      vim.cmd([[hi NeoTreeFloatBorder guifg=#665c54 guibg=#3c3836]])
--    end,
--  },
--}

-- TEMA TRANSPARENTE
return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        transparent_background = true, -- 👈 CLAVE
        term_colors = true,
        integrations = {
          treesitter = true,
          native_lsp = {
            enabled = true,
          },
          neo_tree = true,
          lualine = true,
          cmp = true,
          telescope = true,
          gitsigns = true,
          noice = true,
        },
      })

      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
