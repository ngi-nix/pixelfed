## Pixelfed 

Funded by the European Commission under the [Next Generation Internet](https://www.ngi.eu/ngi-projects/ngi-zero/) initiative

### Objective

1. Package Pixelfed for NixOS
2. Allow usage of Pixelfed through the module system for NixOS

#### Using the Module (NixOS)

To enable the pixelfed module in NixOS, you will have to use [pixelfed.nix](./modules/pixelfed.nix) and package in [pixelfed.nix](./pkgs/pixelfed/default.nix)

This will only cover the flake-based approach (Nix 3.x), but can be expanded for Nix 2.x compatibility.

To include `github:ngi-nix/pixelfed` into your flake, you will first have to include it as an input like the following

```nix
{
  inputs.pixelfed = { type = "github"; owner = "ngi-nix"; repo = "pixelfed"; };
}
```

Before including the module and overlay into the system configuration

```nix
{
  #...
  nixosConfigurations.<name> = nixpkgs.lib.nixosSystem {
    system = "<system>";
    modules = [
      ({ ... }: {
        # Or just `imports = [ inputs.pixelfed.nixosModules.pixelfed ]`
        imports = builtins.attrValues inputs.pixelfed.nixosModules;
        nixpkgs.overlays = [ inputs.pixelfed.overlay ];
      })
    ];
  };
}
```

In which you can enable the service afterwards

```nix
{
  #...
  nixosConfigurations.<name> = nixpkgs.lib.nixosSystem {
    system = "<system>";
    modules = [
      ({ ... }: {
        services.pixelfed.enable = true;
      })
    ];
  };
}
```

#### Using the test container
See [REVIEW.md](./REVIEW.md)
