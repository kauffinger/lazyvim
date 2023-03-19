return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    opts = {
      suggestion = { enabled = false },
      panel = { enabled = false },
    },
  },
  --   {
  --     "zbirenbaum/copilot-cmp",
  --     dependencies = "copilot.lua",
  --     opts = {},
  --     config = function(_, opts)
  --       local copilot_cmp = require("copilot_cmp")
  --       copilot_cmp.setup(opts)
  --       -- attach cmp source whenever copilot attaches
  --       -- fixes lazy-loading issues with the copilot cmp source
  --       require("lazyvim.util").on_attach(function(client)
  --         if client.name == "copilot" then
  --           copilot_cmp._on_insert_enter()
  --         end
  --       end)
  --     end,
  --   }
}
