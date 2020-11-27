with import <nixpkgs> { };

runCommand "composer2nix-deps"
{
  buildInputs = [
    nix-prefetch-scripts
    (import
      (
        builtins.fetchTarball {
          url = "https://github.com/svanderburg/composer2nix/archive/v0.0.4.tar.gz";
          sha256 = "0q0x3in43ss1p0drhc5lp5bnp2jqni1i7zxm7lmjl5aad9nkn3gf";
        })
      { })
  ];
} ""
