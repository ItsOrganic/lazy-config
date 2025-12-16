return {
  {
    "NickvanDyke/opencode.nvim",
    dependencies = {
      {
        "folke/snacks.nvim",
        opts = {
          input = {},
          picker = {},
          terminal = {},
        },
      },
    },
    config = function()
      -- Global opts (plugin reads this)
      vim.g.opencode_opts = {
        provider = {
          enabled = "snacks",
          snacks = {
            win = {
              position = "right",
              width = 80,
            },
          },
        },
      }
      -- Required for reload support
      vim.o.autoread = true

      -- Keymaps (safe defaults)
      vim.keymap.set({ "n", "x" }, "<leader>oa", function()
        require("opencode").ask("@this: ", { submit = true })
      end, { desc = "Ask opencode" })

      vim.keymap.set({ "n", "x" }, "<leader>ox", function()
        require("opencode").select()
      end, { desc = "Opencode select" })

      vim.keymap.set({ "n", "x" }, "ga", function()
        require("opencode").prompt("@this")
      end, { desc = "Add to opencode" })

      vim.keymap.set({ "n", "t" }, "<leader>ot", function()
        require("opencode").toggle()
      end, { desc = "Toggle opencode" })

      -- Additional convenience keymap for opening on right (your <leader>op)
      vim.keymap.set({ "n", "t" }, "<leader>op", function()
        require("opencode").toggle()
      end, { desc = "Open code panel (right)" })
    end,
  },
}
