return {
  "nvim-cmp",
  opts = function(_, opts)
    table.insert(opts.sources, 1, {
      name = "copilot",
      group_index = 2,
      priority = 100,
    })
  end,
}
