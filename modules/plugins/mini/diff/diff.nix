{
  config,
  lib,
  ...
}: let
  inherit (lib.options) mkEnableOption mkOption;
  inherit (lib.nvim.types) mkPluginSetupOption;
in {
  options.vim.mini.diff = {
    enable = mkEnableOption "mini.diff";
    setupOpts = mkPluginSetupOption "mini.diff" {};
  };
}
