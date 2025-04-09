{ pkgs, ... }:
{

  programs.vscode.profiles.default.extensions =
    (with pkgs.vscode-marketplace; [

      aaron-bond.better-comments # Better Comments
      globalmaxima.ai-workflows-helper # AI workflow helper
      oven.bun-vscode # Bun for Visual Studio Code

      ms-vscode.copilot-mermaid-diagram # vscode-mermAId
      ms-vscode.vscode-speech # VS Code Speech

      # Git
      gitlab.gitlab-workflow # GitLab Workflow
      mhutchie.git-graph # Git Graph

      # GraphQL
      graphql.vscode-graphql # GraphQL: Language Feature Support
      graphql.vscode-graphql-execution # GraphQL: Inline Operation Execution
      graphql.vscode-graphql-syntax # GraphQL: Syntax Highlighting

      # Themes
      equinusocio.vsc-material-theme-icons # Material Theme Icons — Free
      pkief.material-product-icons # Material Product Icons
      zhuangtongfa.material-theme # One Dark Pro

      rooveterinaryinc.roo-cline # Roo Code (prev. Roo Cline)

      redhat.vscode-yaml # YAML
      redhat.vscode-xml # XML

      editorconfig.editorconfig # EditorConfig for VS Code

      dbaeumer.vscode-eslint # ESLint
      esbenp.prettier-vscode
      jnoortheen.nix-ide
      vitest.explorer
      ibm.output-colorizer # Output Colorizer

    ])
    ++ (with pkgs.vscode-marketplace-release; [

      # eamodio.gitlens # GitLens — Git supercharged

      # GitHub Copilot
      github.copilot # GitHub Copilot
      github.copilot-chat # GitHub Copilot Chat

    ]);

}
