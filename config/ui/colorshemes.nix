{
  self,
  pkgs,
  ...
}:
{
  extraPlugins = with pkgs.vimPlugins; [
    aurora
    ayu-vim
    adwaita-nvim
    boo-colorscheme-nvim
    bluloco-nvim
    catppuccin-nvim
    citruszest-nvim
    cyberdream-nvim
    dracula-nvim
    doom-one-nvim
    embark-vim
    everforest
    jellybeans-nvim
    kanagawa-nvim
    monokai-pro-nvim
    miasma-nvim
    midnight-nvim
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
    starrynight
    tokyonight-nvim
    vscode-nvim
    vim-horizon
  ];
  #++ [
  # Add huez directly here with proper configuration
  #(pkgs.vimUtils.buildVimPlugin {
  # name = "huez";
  # src = pkgs.fetchFromGitHub {
  #  owner = "vague2k";
  # repo = "huez.nvim";
  #  rev = "03e193e4aa02b5b3a439d0cc5edeb85a2f7b5415";
  # hash = "sha256-BPzaPn0ZFKqIi7UgAF1gySyHbrJq5vvZheAUv/SfEs4=";
  # };
  #meta.noRequireCheck = true;
  #})
  #];
}
