return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- Pastikan tema dimuat paling pertama
    config = function()
      require("catppuccin").setup({ flavour = "macchiato" })
      vim.cmd.colorscheme("catppuccin-macchiato")
    end,
  },
}
