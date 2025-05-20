{
  inputs.nixpkgs.url = "github:nixos/nixpkgs/24.11";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { nixpkgs, flake-utils, ... }:
    let
      system = flake-utils.lib.system.x86_64-linux;
      pkgs = nixpkgs.legacyPackages.${system};
      doc = pkgs.callPackage ./doc { };
    in {
      packages.${system} = {
        default = doc;
        inherit doc;
      };
    };
}
