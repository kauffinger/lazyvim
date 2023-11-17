return {
  "jay-babu/mason-nvim-dap.nvim",
  dependencies = "mason.nvim",
  cmd = { "DapInstall", "DapUninstall" },
  opts = {
    -- Makes a best effort to setup the various debuggers with
    -- reasonable debug configurations
    automatic_setup = true,
    -- You can provide additional configuration to the handlers,
    -- see mason-nvim-dap README for more information
    handlers = {
      function(config)
        -- all sources with no handler get passed here

        -- Keep original functionality
        require("mason-nvim-dap").default_setup(config)
      end,
      php = function(config)
        config.configurations = {
          {
            type = "php",
            request = "launch",
            name = "Listen for Xdebug",
            port = 9003,
            pathMappings = {
              -- For some reason xdebug sometimes fails for me, depending on me
              -- using herd or docker. To get it to work, change the order of the mappings.
              -- The first mapping should be the one that you are actively using.
              -- This only started recently, so I don't know what changed.
              ["${workspaceFolder}"] = "${workspaceFolder}",
              ["/var/www/html"] = "${workspaceFolder}",
            },
          },
        }
        require("mason-nvim-dap").default_setup(config) -- don't forget this!
      end,
    },
    -- You'll need to check that you have the required things installed
    -- online, please don't ask me how to install them :)
    ensure_installed = {
      -- Update this to ensure that you have the debuggers for the langs you want
      "php",
      "bash",
      "python",
    },
  },
}
