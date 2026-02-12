return {
  'mfussenegger/nvim-dap',
  keys = function()
    local dap = require('dap')
    return {
      { "<F5>", dap.continue, desc = "DAP Continue" },
      { "<F9>", dap.toggle_breakpoint, desc = "Toggle Breakpoint" },
      { "<F10>", dap.step_over, desc = "Step Over" },
      { "<F11>", dap.step_into, desc = "Step Into" },
      { "<F12>", dap.step_out, desc = "Step Out" },
    }
  end
}

