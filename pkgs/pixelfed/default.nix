{ system, pkgs }:
{ src, version }:
(import ./composition.nix { inherit system pkgs; }).overrideAttrs (attrs: rec
{
  name = "pixelfed";
  inherit src version;
  postInstall = ''
    cat ${./pixelfed.patch} | patch -p1
  '';
})
