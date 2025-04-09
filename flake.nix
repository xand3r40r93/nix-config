{

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:nix-darwin/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    nix-homebrew.url = "github:zhaofengli-wip/nix-homebrew";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    nix-vscode-extensions.url = "github:nix-community/nix-vscode-extensions";
    nix-vscode-extensions.inputs.nixpkgs.follows = "nixpkgs";
    nur.url = "github:nix-community/NUR";
    nur.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs =
    inputs@{
      self,
      nix-darwin,
      nix-homebrew,
      home-manager,
      nix-vscode-extensions,
      nur,
      nixpkgs,
    }:
    {
      darwinConfigurations."macbook" = nix-darwin.lib.darwinSystem {
        modules = [
          ./darwin.nix
          nix-homebrew.darwinModules.nix-homebrew
          {
            nix-homebrew.autoMigrate = true;
            nix-homebrew.enable = true;
            nix-homebrew.user = "xand3r40r93";
          }
          home-manager.darwinModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.users.xand3r40r93 = ./home;
            home-manager.backupFileExtension = "bak";
            users.users.xand3r40r93.name = "xand3r40r93";
            users.users.xand3r40r93.home = "/Users/xand3r40r93";
          }
        ];
        specialArgs = {
          inherit self;
          inherit nix-vscode-extensions;
          inherit nur;
        };
      };
    };

}
