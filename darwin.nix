{
  self,
  nix-vscode-extensions,
  nur,
  pkgs,
  ...
}:
{

  # users.users.xand3r40r93 = {
  #   name = "xand3r40r93";
  #   home = "/Users/xand3r40r93";
  # };

  # users.users = {
  #   <name> = {
  #     name = "<name>";
  #     home = "/Users/<name>";
  #   }

  # };

  environment.systemPackages = with pkgs; [

    # tray
    ice-bar
    monitorcontrol
    stats

    # gui
    iina
    # neovide
    obsidian
    qbittorrent
    raycast
    #    vscode
    # vscode-extensions.github.copilot-chat
    # vscode-extensions.aaron-bond.better-comments
    #            (vscode-with-extensions.override {
    #              vscodeExtensions = with vscode-extensions; [
    #                github.copilot                    # GitHub Copilot
    #                github.copilot-chat               # GitHub Copilot Chat
    #                ms-vscode.copilot-mermaid-diagram # vscode-mermAId
    #                rooveterinaryinc.roo-cline

    # vscodevim.vim
    # matklad.rust-analyzer
    # eamodio.gitlens
    # bbenoist.nix
    #              ];
    #            })

    # cli
    # eza
    # fd
    # fzf
    # git
    mc
    nixfmt-rfc-style
    # neovim
    # yazi
    # zoxide

    # zsh
    # oh-my-zsh
    # starship
    # zsh-autosuggestions

  ];

  fonts.packages = [
    pkgs.nerd-fonts.jetbrains-mono
  ];

  homebrew = {
    enable = true;
    brews = [
      # "mc"
    ];
    casks = [
      "aerospace"
      "figma"
      "keyboardcleantool"
      "nextcloud-vfs"
      # "iina"
    ];
    onActivation.autoUpdate = true;
    # onActivation.cleanup = "zap"; # удалит все что не было поставлено через nix
    onActivation.upgrade = true;
  };

  nix.settings.experimental-features = "nix-command flakes";
  nixpkgs.config.allowUnfree = true;
  nixpkgs.hostPlatform = "aarch64-darwin";
  nixpkgs.overlays = [
    nix-vscode-extensions.overlays.default
    nur.overlays.default
  ];

  # programs.zsh.enable = true;
  # programs.zsh.enableCompletion = true;
  # # programs.zsh.enableFastSyntaxHighlighting = true;
  # programs.zsh.enableGlobalCompInit = true;
  # programs.zsh.enableSyntaxHighlighting = true;
  # programs.zsh.enableFzfCompletion = true;
  # programs.zsh.enableFzfHistory = true;
  # programs.zsh.enableBashCompletion = true;
  # programs.zsh.interactiveShellInit = ''
  #   source ${pkgs.oh-my-zsh}/share/oh-my-zsh/oh-my-zsh.sh
  #   source "${pkgs.zsh-autosuggestions}/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
  #   # eval "$(${pkgs.zoxide}/bin/zoxide init zsh)"
  # '';
  # programs.zsh.promptInit = ''
  #   eval "$(${pkgs.starship}/bin/starship init zsh)"
  # '';
  # programs.zsh.variables = {
  #   EDITOR = "nvim";
  # };

  system.configurationRevision = self.rev or self.dirtyRev or null;
  system.defaults.dock.autohide = true;
  system.defaults.dock.largesize = 48;
  system.defaults.dock.launchanim = false;
  system.defaults.dock.magnification = true;
  system.defaults.dock.tilesize = 40;
  system.defaults.LaunchServices.LSQuarantine = false;
  system.defaults.loginwindow.GuestEnabled = false;
  system.defaults.screencapture.disable-shadow = true;
  system.defaults.WindowManager.StandardHideWidgets = true;
  system.stateVersion = 6;

}
