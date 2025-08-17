return {
  "snacks.nvim",
  opts = {
    bigfile = { enabled = true },
    dashboard = { enabled = false },
    explorer = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    picker = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = false },
    statuscolumn = { enabled = true },
    words = { enabled = true },
  },
  keys = {
    {
      "<leader>oo",
      function()
        local obsidian_path = vim.fn.getenv("HOME")
        if obsidian_path and obsidian_path ~= "" then
          local dev_path = obsidian_path .. "/obsidian/"
          Snacks.picker.files({ cwd = dev_path })
        else
          print("Error: $OBSIDIAN environment variable is not set")
        end
      end,
      desc = "Find Notes",
    },
    {
      "<leader>oy",
      function()
        local obsidian_path = vim.fn.getenv("OBSIDIAN")
        if obsidian_path and obsidian_path ~= "" then
          local dev_path = obsidian_path .. "/YGGDRASIL"
          Snacks.picker.files({ cwd = dev_path })
        else
          print("Error: $OBSIDIAN environment variable is not set")
        end
      end,
      desc = "Find Work Notes",
    },
  },
}
