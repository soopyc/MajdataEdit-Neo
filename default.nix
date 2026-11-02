with import <nixpkgs> {
  config = { allowUnfree = true; };
  overlays = [ ];
};

callPackage ./Nix { }

