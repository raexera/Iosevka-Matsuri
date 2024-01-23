{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (system: let
      modifications = _: prev: {
        iosevka-matsuri = pkgs.callPackage ./nix {};
      };

      pkgs = import nixpkgs {
        inherit system;
        overlays = [modifications];
      };
    in (with pkgs; {
      packages.default = iosevka-matsuri;
      overlays.default = modifications;
      devShells.default = mkShell {
        buildInputs = [iosevka-matsuri];
      };
    }));
}
