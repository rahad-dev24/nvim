-- ~/.config/nvim/lua/plugins/cmp.lua

return {
  -- nvim-cmp core
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter', -- Lazy-load on entering insert mode
    dependencies = {
      -- 🔌 Completion sources
      'hrsh7th/cmp-nvim-lsp',     -- LSP completion
      'hrsh7th/cmp-buffer',       -- Buffer words
      'hrsh7th/cmp-path',         -- Filesystem paths
      'hrsh7th/cmp-cmdline',      -- : and / command completion

      -- 🧠 Snippet support
      'L3MON4D3/LuaSnip',         -- Snippet engine
      'saadparwaiz1/cmp_luasnip', -- LuaSnip integration with cmp
      'rafamadriz/friendly-snippets', -- Prebuilt snippets

      -- 🤖 Codeium (AI suggestions)
      {
        "Exafunction/windsurf.nvim",
        dependencies = {
          "nvim-lua/plenary.nvim",
          "hrsh7th/nvim-cmp",
        },
        config = function()
          require("codeium").setup({})
        end,
      },

      -- 🪄 Auto-pairs for brackets/quotes
      {
        'windwp/nvim-autopairs',
        config = function()
          require("nvim-autopairs").setup({})
        end,
      },
    },

    config = function()
      local cmp = require('cmp')
      local luasnip = require('luasnip')

      -- 🔄 Load VSCode-like snippets
      require("luasnip.loaders.from_vscode").lazy_load()

      -- 🔁 Link autopairs with cmp confirmation
      local cmp_autopairs = require("nvim-autopairs.completion.cmp")
      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

      cmp.setup({
        snippet = {
          -- 🎯 Expand snippet when selected
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },

        -- ⌨️ Key mappings
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }), -- auto-select
          ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end, { "i", "s" }),
          ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { "i", "s" }),
        }),

        -- 📚 Sources for completion
        sources = cmp.config.sources({
          { name = 'codeium' },     -- 🤖 AI completion (highest priority)
          { name = 'nvim_lsp' },    -- LSP suggestions
          { name = 'luasnip' },     -- Snippets
          { name = 'buffer' },      -- Buffer words
          { name = 'path' },        -- File paths
        }),
      })

      -- 🔎 Setup for `/` search
      cmp.setup.cmdline('/', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = 'buffer' }
        }
      })

      -- 💻 Setup for `:` commands
      cmp.setup.cmdline(':', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = 'path' }
        }, {
          { name = 'cmdline' }
        })
      })
    end,
  },

  -- 🌐 Language Server Protocol setup
  {
    'neovim/nvim-lspconfig',
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local lspconfig = require('lspconfig')
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      -- 🧠 Example: JavaScript/TypeScript
      lspconfig.tsserver.setup {
        capabilities = capabilities,
      }

      -- Add more language servers as needed:
      -- lspconfig.lua_ls.setup { capabilities = capabilities }
      -- lspconfig.pyright.setup { capabilities = capabilities }
    end
  }
}
