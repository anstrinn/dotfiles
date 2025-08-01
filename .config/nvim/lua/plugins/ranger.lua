return {
  "kelly-lin/ranger.nvim",
  lazy = true,
  enabled = false,
  keys = {
    {
      "-",
      function()
        require("ranger-nvim").open(true)
      end,
      desc = "Open Ranger",
    },
  },
  config = function()
    require("ranger-nvim").setup({ replace_netrw = true })
  end,
}
