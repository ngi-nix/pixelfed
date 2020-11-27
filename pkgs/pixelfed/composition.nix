{pkgs ? import <nixpkgs> {
    inherit system;
  }, system ? builtins.currentSystem, noDev ? false}:

let
  composerEnv = import ./composer-env.nix {
    php = pkgs.php74;
    inherit (pkgs) stdenv writeTextFile fetchurl unzip phpPackages;
  };
in
import ./php-packages.nix {
  inherit composerEnv noDev;
  inherit (pkgs) fetchurl fetchgit fetchhg fetchsvn;
}
