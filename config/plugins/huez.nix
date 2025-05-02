{
  pkgs,
  lib,
  config,
  ...
}: {
  plugins.huez = {
    enable = true;
    package = pkgs.vimUtils.buildVimPlugin {
      name = "huez";
      src = pkgs.fetchFromGitHub {
        owner = "vague2k";
        repo = "huez.nvim";
        rev = "03e193e4aa02b5b3a439d0cc5edeb85a2f7b5415";
        hash = "sha256-BPzaPn0ZFKqIi7UgAF1gySyHbrJq5vvZheAUv/SfEs4=";
      };
      meta.noRequireCheck = true;
    };
    settings = {
      auto_apply = true;
      ensure_installed = [];
    };
  };

  # Ensure required dependencies
  plugins.telescope.enable = true;
  plugins.plenary.enable = true;
}
