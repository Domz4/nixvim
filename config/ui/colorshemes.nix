{
  self,
  pkgs,
  ...
}:
{
  extraPlugins =
    with pkgs.vimPlugins;
    [
      aurora
      ayu-vim
      adwaita-nvim
      boo-colorscheme-nvim
      bluloco-nvim
      catppuccin-nvim
      citruszest-nvim
      cyberdream-nvim
      dracula-nvim
      hydra-nvim
      doom-one-nvim
      embark-vim
      everforest
      jellybeans-nvim
      kanagawa-nvim
      gruber-darker-nvim
      gruvbox
      gruvbox-baby
      monokai-pro-nvim
      miasma-nvim
      midnight-nvim
      material-vim
      night-owl-nvim
      nightfox-nvim
      nightly-nvim
      nord-nvim
      neovim-ayu
      oceanic-next
      oceanic-material
      onenord-nvim
      onedarkpro-nvim
      oxocarbon-nvim
      palenightfall-nvim
      poimandres-nvim
      rose-pine
      sonokai
      solarized-nvim
      SpaceCamp
      seoul256-vim
      starrynight
      tokyonight-nvim
      vscode-nvim
      vim-horizon
      zenburn
    ]
    ++ [
      # Add huez directly here with proper configuration
      (pkgs.vimUtils.buildVimPlugin {
        name = "ef-themes";
        src = pkgs.fetchFromGitHub {
          owner = "oonamo";
          repo = "ef-themes.nvim";
          rev = "5deb08237d1e243532dfdb5b24c3658c31d255aa";
          hash = "sha256-ZBkUiCYOjbLCrWfPfKTvI1pLxn3K7WbYFV6Bfv62i9M=";
        };
      })

      (pkgs.vimUtils.buildVimPlugin {
        name = "heatherfield";
        src = pkgs.fetchFromGitHub {
          owner = "egerhether";
          repo = "heatherfield.nvim";
          rev = "5f31cede1333c0ce1b6d732dfc51f12d9978e5ee";
          hash = "sha256-ZBkUiCYOjbLCrWfPfKTvI1pLxn3K7WbYFV6Bfv62i9M=";
        };
      })
    ];
}
