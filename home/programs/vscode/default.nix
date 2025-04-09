{

  programs.vscode.enable = true;
  programs.vscode.mutableExtensionsDir = true;

  imports = [
    ./extensions.nix
    ./keybindings.nix
    ./user-settings.nix
  ];

}
