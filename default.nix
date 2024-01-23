{ pkgs, ... }: {
  overlays.default = _: prev: {
    iosevka-matsuri = pkgs.callPackage ./nix {};
  };
}
