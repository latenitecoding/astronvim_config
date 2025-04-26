-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics = { virtual_text = true, virtual_lines = false }, -- diagnostic settings on startup
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- passed to `vim.filetype.add`
    filetypes = {
      -- see `:h vim.filetype.add` for usage
      extension = {
        foo = "fooscript",
      },
      filename = {
        [".foorc"] = "fooscript",
      },
      pattern = {
        [".*/etc/foo/.*"] = "fooscript",
      },
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = true, -- sets vim.opt.spell
        signcolumn = "auto", -- sets vim.opt.signcolumn to auto
        wrap = false, -- sets vim.opt.wrap
        -- colorcolumn = "80,100,120",
        scrolloff = 8,
        guicursor = "",
        tabstop = 4,
        softtabstop = 4,
        shiftwidth = 4,
        expandtab = true,
        completeopt = {"menuone", "noselect", "noinsert"}
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
        zig_fmt_autosave = 0,
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map

        -- navigate buffer tabs
        ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        -- mappings seen under group name "Buffer"
        ["<Leader>bd"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Close buffer from tabline",
        },

        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
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

        -- ["<Leader>b"] = { desc = "Buffers" },

        -- setting a mapping to false will disable it
        -- ["<C-S>"] = false,
      },
    },
  },
}
