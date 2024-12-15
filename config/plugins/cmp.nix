{
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings.sources = [
      { name = "nvim_lsp"; }
      { name = "luasnip"; }
      { name = "buffer"; }
      { name = "nvim_lua"; }
      { name = "path"; }
    ];

    settings.mapping = {
      "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Select}), {'i', 's'})";
      "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item({behavior = cmp.SelectBehavior.Select}), {'i', 's'})";
    };
  };
}
