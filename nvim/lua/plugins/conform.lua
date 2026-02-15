return {
  "stevearc/conform.nvim",
  opts = {
    format_on_save = {
      timeout_ms = 1000,
      lsp_fallback = true,
    },

    -- para que se pueda usar el formateador en astro hay que instalar prettier en el proyecto con "npm install -D prettier prettier-plugin-astro"
    -- crear un archivo .prettierrc y poner:
    --{
    -- "plugins": ["prettier-plugin-astro"]
    --}
    formatters_by_ft = {
      astro = { "prettierd" },

      javascript = { "prettierd" },
      javascriptreact = { "prettierd" },
      typescript = { "prettierd" },
      typescriptreact = { "prettierd" },

      html = { "prettierd" },
      css = { "prettierd" },
      scss = { "prettierd" },
      json = { "prettierd" },
      yaml = { "prettierd" },
      markdown = { "prettierd" },

      rust = { "rustfmt" },
    },
  },
}
