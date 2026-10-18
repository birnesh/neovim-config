local formatters = {
  javascript = { "prettier" },
  javascriptreact = { "prettier" },
  typescript = { "prettier" },
  typescriptreact = { "prettier" },
  json = { "prettier" },
  jsonc = { "prettier" },
  python = { "ruff_format" },
  go = { "goimports", "gofumpt" },
}

return {
  -- formatters per filetype, run on save through LazyVim's conform integration
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = vim.tbl_extend("force", formatters, {
        -- snacks.nvim sets filetype to "bigfile" on large files, so use the real filetype's formatters
        bigfile = function(bufnr)
          return formatters[vim.filetype.match({ buf = bufnr }) or ""] or {}
        end,
      }),
    },
  },

  -- install the formatter binaries with mason
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "prettier",
        "ruff",
        "goimports",
        "gofumpt",
      },
    },
  },
}
