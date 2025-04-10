{ pkgs, ... }:
let

  plugins-repo = pkgs.fetchFromGitHub {
    owner = "yazi-rs";
    repo = "plugins";
    rev = "a1738e8088366ba73b33da5f45010796fb33221e";
    hash = "sha256-eiLkIWviGzG9R0XP1Cik3Bg0s6lgk3nibN6bZvo8e9o=";
  };

  # vscode-repo = pkgs.fetchFromGitHub {
  #   owner = "956MB";
  #   repo = "vscode.yazi";
  #   rev = "63268f169cf821a72c036ab7e0a772a8c4815845";
  #   hash = "sha256-rdK11kU792jlxlY1lG4vVmfewS5F3tg8XaV6WIkS4T8=";
  # };

in
{

  programs.yazi.enable = true;
  programs.yazi.initLua = ./init.lua;

  programs.yazi.plugins = {
    # git = "${plugins-repo}/git.yazi";
    mount = "${plugins-repo}/mount.yazi";
    starship = pkgs.fetchFromGitHub {
      owner = "Rolv-Apneseth";
      repo = "starship.yazi";
      rev = "6c639b474aabb17f5fecce18a4c97bf90b016512";
      hash = "sha256-bhLUziCDnF4QDCyysRn7Az35RAy8ibZIVUzoPgyEO1A=";
    };
    # yatline = pkgs.fetchFromGitHub {
    #   owner = "imsi32";
    #   repo = "yatline.yazi";
    #   rev = "6b0fc1ef5eca034460b4c69cb87c424103227a2e";
    #   hash = "sha256-oHCRScbahGaX8MTVNalNXlxQ7NJN5QKvGHbTXreAWFM=";
    # };
    yazi-plugin-bat = pkgs.fetchFromGitHub {
      owner = "mgumz";
      repo = "yazi-plugin-bat";
      rev = "85b58bc12d886a2a906de48defc8f4876b3f35b3";
      hash = "sha256-MhHziS9rrapJ/9tj+CH3TD9kthhPDlJXfSWc6NnURkY=";
    };
  };

  # programs.yazi.flavors = {
  #   vscode-dark-modern = "${vscode-repo}/themes/vscode-dark-modern.yazi";
  # };

  programs.yazi.settings = {
    manager = {
      ratio = [
        1
        2
        2
      ];
    };
  };

  programs.yazi.keymap = {
    manager.prepend_keymap = [
      {
        on = [
          "g"
          "p"
        ];
        run = "cd ~/Projects";
        desc = "Go ~/Projects";
      }
      {
        on = "M";
        run = "plugin mount";
      }
    ];
  };

  # programs.yazi.theme = {
  #   flavor = {
  #     dark = "vscode-dark-modern";
  #   };
  # };

}
