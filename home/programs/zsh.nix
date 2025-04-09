{

  programs.zsh.enable = true;
  programs.zsh.autosuggestion.enable = true;
  programs.zsh.enableCompletion = true;
  programs.zsh.oh-my-zsh.enable = true;
  programs.zsh.syntaxHighlighting.enable = true;

  programs.zsh.shellAliases = {
    y = "yazi";
  };

  home.file.".zshrc".force = true;

}
