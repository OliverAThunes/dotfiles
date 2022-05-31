require("nvim-lsp-installer").setup {}
local nvim_lsp = require("lspconfig")

local cmp = require("cmp")
local source_mapping = {
  buffer = "[Buffer]",
  nvim_lsp = "[LSP]",
  nvim_lua = "[Lua]",
  cmp_tabnine = "[TN]",
  path = "[Path]",
}

cmp.setup({
  snippet = {
    expand = function(args)
      -- For `vsnip` user.
      -- vim.fn["vsnip#anonymous"](args.body)

      -- For `luasnip` user.
      --require("luasnip").lsp_expand(args.body)

      -- For `ultisnips` user.
      vim.fn["UltiSnips#Anon"](args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<tab>'] = cmp.mapping.confirm({ select = true }),
    ["<C-u>"] = cmp.mapping.scroll_docs(-4),
    ["<C-d>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
  }),

  sources = {
    -- tabnine completion? yayaya

    { name = "cmp_tabnine" },

    { name = "nvim_lsp" },

    -- For vsnip user.
    -- { name = 'vsnip' },

    -- For luasnip user.
    --{ name = "luasnip" },

    -- For ultisnips user.
    { name = 'ultisnips' },

    { name = "buffer" },
  },
})

local function config(_config)
  return vim.tbl_deep_extend("force", {
    capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
    on_attach = function()
      Nnoremap("gd", ":lua vim.lsp.buf.definition()<CR>")
      Nnoremap("K", ":lua vim.lsp.buf.hover()<CR>")
      Nnoremap("<leader>vws", ":lua vim.lsp.buf.workspace_symbol()<CR>")
      Nnoremap("<leader>vd", ":lua vim.diagnostic.open_float()<CR>")
      Nnoremap("[d", ":lua vim.lsp.diagnostic.goto_next()<CR>")
      Nnoremap("]d", ":lua vim.lsp.diagnostic.goto_prev()<CR>")
      Nnoremap("<leader>vca", ":lua vim.lsp.buf.code_action()<CR>")
      Nnoremap("<leader>vrr", ":lua vim.lsp.buf.references()<CR>")
      Nnoremap("<leader>vrn", ":lua vim.lsp.buf.rename()<CR>")
      Inoremap("<C-h>", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
    end,
  }, _config or {})
end

nvim_lsp.intelephense.setup(config())

