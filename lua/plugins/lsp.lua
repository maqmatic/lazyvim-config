return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ["*"] = {
        keys = {
          { "<C-k>", false, mode = "i" },
        },
      },
      omnisharp = { enabled = false }, -- disabled in favor of roslyn.nvim
    },
  },
}
