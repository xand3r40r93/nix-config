{ pkgs, ... }:
{

  programs.yazi.enable = true;
  programs.yazi.initLua = ./init.lua;

  programs.yazi.plugins = {
    starship = pkgs.fetchFromGitHub {
      owner = "Rolv-Apneseth";
      repo = "starship.yazi";
      rev = "6c639b474aabb17f5fecce18a4c97bf90b016512";
      hash = "sha256-bhLUziCDnF4QDCyysRn7Az35RAy8ibZIVUzoPgyEO1A=";
    };
    yatline = pkgs.fetchFromGitHub {
      owner = "imsi32";
      repo = "yatline.yazi";
      rev = "6b0fc1ef5eca034460b4c69cb87c424103227a2e";
      hash = "sha256-oHCRScbahGaX8MTVNalNXlxQ7NJN5QKvGHbTXreAWFM=";
    };
    yazi-plugin-bat = pkgs.fetchFromGitHub {
      owner = "mgumz";
      repo = "yazi-plugin-bat";
      rev = "85b58bc12d886a2a906de48defc8f4876b3f35b3";
      hash = "sha256-MhHziS9rrapJ/9tj+CH3TD9kthhPDlJXfSWc6NnURkY=";
    };
  };

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
    ];
  };

}
