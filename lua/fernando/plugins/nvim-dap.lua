return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")
    -- C config
    dap.adapters.gdb = {
      type = "executable",
      command = "gdb",
      args = { "--interpreter=dap", "--eval-command", "set print pretty on" },
    }
    dap.configurations.c = {
      {
        name = "Launch",
        type = "gdb",
        request = "launch",
        program = function()
          return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end,
        cwd = "${workspaceFolder}",
        stopAtBeginningOfMainSubprogram = false,
      },
      {
        name = "Select and attach to process",
        type = "gdb",
        request = "attach",
        program = function()
          return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end,
        pid = function()
          local name = vim.fn.input("Executable name (filter): ")
          return require("dap.utils").pick_process({ filter = name })
        end,
        cwd = "${workspaceFolder}",
      },
      {
        name = "Attach to gdbserver :1234",
        type = "gdb",
        request = "attach",
        target = "localhost:1234",
        program = function()
          return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end,
        cwd = "${workspaceFolder}",
      },
    }
    -- end C config
    require("dapui").setup()
    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end
    vim.keymap.set("n", "<leader>db", function()
      dap.toggle_breakpoint()
    end, { desc = "Toggle Breakpoint" })
    vim.keymap.set("n", "<leader>dc", function()
      require("dap").continue()
    end, { desc = "Continue Debug" })
    vim.keymap.set("n", "<F10>", function()
      require("dap").step_over()
    end, { desc = "Dont enter the function call" })
    vim.keymap.set("n", "<F11>", function()
      require("dap").step_into()
    end, { desc = "Enters the function call" })
    vim.keymap.set("n", "<F12>", function()
      require("dap").step_out()
    end, { desc = "Continue until exit the current function" })
  end,
}
