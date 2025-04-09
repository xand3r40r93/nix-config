{ pkgs, ... }:
{

  programs.ghostty.enable = true;
  programs.ghostty.package = pkgs.nur.repos.gigamonster256.ghostty-darwin;
  programs.ghostty.enableZshIntegration = true;
  programs.ghostty.installBatSyntax = true;

  programs.ghostty.settings = {
    "background" = "#000000";
    "font-family" = "JetBrainsMono Nerd Font Mono";
    "font-size" = 17;
    "font-thicken" = true;
    "macos-non-native-fullscreen" = "visible-menu";
    "macos-option-as-alt" = true;
    "macos-titlebar-style" = "hidden";
    "minimum-contrast" = 2;
    "quit-after-last-window-closed" = true;
    "term" = "xterm-256color";
    "window-colorspace" = "display-p3";
    "window-inherit-working-directory" = false;
    "window-padding-balance" = true;
    "window-padding-x" = 16;
    "window-padding-y" = 16;
  };

}
