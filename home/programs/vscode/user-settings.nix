{
  programs.vscode.profiles.default.userSettings = {

    # Visual
    "editor.cursorSmoothCaretAnimation" = "on";
    "editor.scrollbar.horizontalScrollbarSize" = 8;
    "editor.scrollbar.verticalScrollbarSize" = 8;
    "window.zoomLevel" = 0.8;
    "workbench.colorTheme" = "One Dark Pro Darker";
    "workbench.iconTheme" = "eq-material-theme-icons-darker";
    "workbench.productIconTheme" = "material-product-icons";
    "editor.accessibilitySupport" = "off";

    # Font
    "editor.fontFamily" = "\"JetBrainsMono Nerd Font\"";
    "editor.fontLigatures" = true;
    "editor.fontSize" = 14;
    "editor.lineHeight" = 1.25;
    "terminal.integrated.fontSize" = 13;

    # Minimap
    "editor.minimap.maxColumn" = 40;
    "editor.minimap.renderCharacters" = false;
    "editor.minimap.scale" = 2;
    "editor.minimap.showSlider" = "always";

    # Inlay Hints
    "editor.inlayHints.enabled" = "offUnlessPressed";
    "editor.inlayHints.fontFamily" = "JetBrainsMono Nerd Font";
    "editor.inlayHints.fontSize" = 11;
    "editor.inlayHints.padding" = true;
    "javascript.inlayHints.functionLikeReturnTypes.enabled" = true;
    "javascript.inlayHints.parameterNames.enabled" = "all";
    "javascript.inlayHints.parameterTypes.enabled" = true;
    "javascript.inlayHints.propertyDeclarationTypes.enabled" = true;
    "javascript.inlayHints.variableTypes.enabled" = true;
    "typescript.inlayHints.enumMemberValues.enabled" = true;
    "typescript.inlayHints.functionLikeReturnTypes.enabled" = true;
    "typescript.inlayHints.parameterNames.enabled" = "all";
    "typescript.inlayHints.parameterTypes.enabled" = true;
    "typescript.inlayHints.propertyDeclarationTypes.enabled" = true;
    "typescript.inlayHints.variableTypes.enabled" = true;

    "editor.foldingImportsByDefault" = true;
    "editor.guides.bracketPairs" = true;
    "editor.linkedEditing" = true;
    "editor.wordWrap" = "on";
    "explorer.compactFolders" = false;
    "explorer.decorations.colors" = false;
    "explorer.excludeGitIgnore" = true;
    "explorer.fileNesting.enabled" = true;
    "explorer.fileNesting.expand" = false;
    "files.autoSave" = "onFocusChange";
    "typescript.locale" = "ru";
    "workbench.startupEditor" = "none";

    "npm.packageManager" = "bun";
    "npm.scriptRunner" = "bun";

    "editor.formatOnPaste" = true;
    "editor.formatOnSave" = true;
    "editor.formatOnType" = true;
    "editor.tabSize" = 2;
    "eslint.format.enable" = true;
    "files.trimFinalNewlines" = true;
    "files.trimTrailingWhitespace" = true;
    "prettier.printWidth" = 120;
    "terminal.integrated.cursorBlinking" = true;

    #
    "[graphql]" = {
      "editor.defaultFormatter" = "esbenp.prettier-vscode";
    };
    "[json]" = {
      "editor.defaultFormatter" = "esbenp.prettier-vscode";
    };
    "[jsonc]" = {
      "editor.defaultFormatter" = "esbenp.prettier-vscode";
    };
    "[typescript]" = {
      "editor.defaultFormatter" = "dbaeumer.vscode-eslint";
    };
    "[typescriptreact]" = {
      "editor.defaultFormatter" = "dbaeumer.vscode-eslint";
    };
    "[yaml]" = {
      "editor.defaultFormatter" = "esbenp.prettier-vscode";
    };

  };
}
