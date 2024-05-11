local dap = require('dap')

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
        return 'ConsoleTest/bin/Debug/net8.0/ConsoleTest.dll' -- replace path to dll
    end,
  },
}
