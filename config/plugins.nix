{ lib, ... }:
let
  plugin_list = [
    "cmp-buffer"
    "cmp-nvim-lsp"
    "barbecue"
    "colorizer"
    "gitsigns"
    "indent-blankline"
    "lualine"
    "toggleterm"
    "web-devicons"
    "which-key"
    "telescope"
    "lazy"
    "fzf-lua"
    "better-escape"
    # "bufferline"
  ];

  enablePlugins = lib.listToAttrs (
    map (name: {
      inherit name;
      value.enable = true;
    }) plugin_list
  );
in
{
  imports = [
    ./plugins/bufferline.nix
    ./plugins/cmp.nix
    ./plugins/harpoon.nix
    ./plugins/lspconfig.nix
    ./plugins/none-ls.nix
    ./plugins/telescope.nix
    ./plugins/treesitter.nix
    ./plugins/luasnip.nix
    ./ui/colorshemes.nix
  ];

  # list of all plugins

  plugins = enablePlugins // {
    cmp-ai.enable = true;
    nvim-autopairs = {
      enable = true;
      settings = {
        fast_wrap = {
          map = "<C-a>";
        };
      };
    };

    neo-tree = {
      enable = true;
      window.position = "float";
    };
  };
  extraConfigLua = ''
    require("neo-tree").setup({
    		filesystem = {
    	filtered_items = {
    		hide_hidden = false,
    		},
    	},
    })
  '';
}
