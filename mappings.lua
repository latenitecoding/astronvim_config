-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    -- switch buffers
    ["<leader>bl"] = { "<cmd>bnext<cr>", desc = "Next buffer" },
    ["<leader>bh"] = { "<cmd>bprev<cr>", desc = "Prev buffer" },
    -- harpoon
    ["<leader>m"] = { name = "Harpoons" },
    ["<leader>ma"] = {
      function()
        require("harpoon.mark").add_file()
      end,
      desc = "Harpoon file"
    },
    ["<leader>md"] = {
      function()
        require("harpoon.mark").rm_file()
      end,
      desc = "Delete harpoon"
    },
    ["<leader>mf"] = {
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
      desc = "Check harpoons"
    },
    ["<leader>m1"] = {
      function()
        require("harpoon.ui").nav_file(1)
      end,
      desc = "Goto harpoon 1"
    },
    ["<leader>m2"] = {
      function()
        require("harpoon.ui").nav_file(2)
      end,
      desc = "Goto harpoon 2"
    },
    ["<leader>m3"] = {
      function()
        require("harpoon.ui").nav_file(3)
      end,
      desc = "Goto harpoon 3"
    },
    ["<leader>m4"] = {
      function()
        require("harpoon.ui").nav_file(4)
      end,
      desc = "Goto harpoon 4"
    },
    ["<leader>m5"] = {
      function()
        require("harpoon.ui").nav_file(5)
      end,
      desc = "Goto harpoon 5"
    },
    ["<leader>m6"] = {
      function()
        require("harpoon.ui").nav_file(6)
      end,
      desc = "Goto harpoon 6"
    },
    ["<leader>ml"] = {
      function()
        require("harpoon.ui").next_next()
      end,
      desc = "Next harpoon"
    },
    ["<leader>mh"] = {
      function()
        require("harpoon.ui").nav_prev()
      end,
      desc = "Prev harpoon"
    },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
