{
  description = "Pixelfed a free and ethical photo sharing platform, powered by ActivityPub federation.";

  # Nixpkgs / NixOS version to use.
  inputs.nixpkgs = { type = "github"; owner = "NixOS"; repo = "nixpkgs"; ref = "nixos-20.09"; };

  # Flake compatability shim
  inputs.flake-compat = { type = "github"; owner = "edolstra"; repo = "flake-compat"; flake = false; };

  inputs.pixelfed-src = { url = github:pixelfed/pixelfed/dev; flake = false; };

  outputs = { self, nixpkgs, ... }@inputs:
    let
      # Generate a user-friendly version numer.
      versions =
        let
          generateVersion = builtins.substring 0 8;
        in
        nixpkgs.lib.genAttrs
          [ "pixelfed" ]
          (n: generateVersion inputs."${n}-src".lastModifiedDate);

      # System types to support.
      supportedSystems = [ "x86_64-linux" ];

      # Helper function to generate an attrset '{ x86_64-linux = f "x86_64-linux"; ... }'.
      forAllSystems = f: nixpkgs.lib.genAttrs supportedSystems (system: f system);

      # Nixpkgs instantiated for supported system types.
      nixpkgsFor = forAllSystems (system: import nixpkgs { inherit system; overlays = [ self.overlay ]; });

    in
    {

      # A Nixpkgs overlay.
      overlay = final: prev:
        with final;
        {

          pixelfed = callPackage ./pkgs/pixelfed { } {
            src = inputs.pixelfed-src;
            version = versions.pixelfed;
          };

        };

      # Provide some binary packages for selected system types.
      packages = forAllSystems (system:
        {
          inherit (nixpkgsFor.${system})
            pixelfed;
        });

      # The default package for 'nix build'. This makes sense if the
      # flake provides only one package or there is a clear "main"
      # package.
      defaultPackage = forAllSystems (system: self.packages.${system}.pixelfed);

      # A NixOS module, if applicable (e.g. if the package provides a system service).
      nixosModules.pixelfed =
        { pkgs, ... }:
        {
          imports =
            [
              ./modules/pixelfed.nix
            ];

          nixpkgs.overlays = [ self.overlay ];
        };

      # NixOS system configuration, if applicable
      nixosConfigurations.container =
        nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules =
            [
              self.nixosModules.pixelfed
              ({ pkgs, ... }: {
                system.configurationRevision = "whatever";
                boot.isContainer = true;
                networking.useDHCP = false;
                networking.firewall.allowedTCPPorts = [ 80 443 25 465 ];
                services.pixelfed = {
                  enable = true;
                  appDomain = "10.233.1.2";
                  config = {
                    dbSocket = "/var/run/mysqld/mysqld.sock";
                    dbPort = "3306";
                    appKey = "'base64:lwX95GbNWX3XsucdMe0XwtOKECta3h/B+p9NbH2jd0E='";
                  };
                };
                services.redis.enable = true;

                services.mysql = {
                  enable = true;
                  package = pkgs.mariadb;
                  ensureDatabases = [ "pixelfed" ];
                  ensureUsers = [
                    {
                      name = "pixelfed";
                      ensurePermissions = {
                        "pixelfed.*" = "ALL PRIVILEGES";
                      };
                    }
                  ];
                };
                systemd.services = {
                  pixelfed-local-certs = {
                    wantedBy = [ "multi-user.target" ];
                    before = [ "nginx.service" ];
                    script = ''
                      if [ ! -d "/certs" ]; then
                        mkdir /certs
                        ${pkgs.openssl}/bin/openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
                        -keyout /certs/nginx-selfsigned.key \
                        -out /certs/nginx-selfsigned.crt \
                        -subj "/C=PE/ST=Lima/L=Lima/O=Acme Inc. /OU=IT Department/CN=acme.com"
                        chown -R nginx:nginx /certs
                      fi
                    '';
                    serviceConfig = {
                      Type = "oneshot";
                    };
                  };
                };
              })
            ];
        };

    };
}
