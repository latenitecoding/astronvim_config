return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  {
    "m4xshen/smartcolumn.nvim",
    opts = {
      colorcolumn = "120",
      disabled_filetypes = { "help" },
    },
  },
}
