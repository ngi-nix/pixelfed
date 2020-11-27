{ config, lib, pkgs, ... }:

with lib;
let
  cfg = config.services.pixelfed;

  phpPackage =
    let
      base = pkgs.php74;
    in
    base.buildEnv {
      extensions = { enabled, all }: with all;
        enabled ++ [
          imagick
        ];
    };

  package = pkgs.pixelfed;
  toStr = value:
    if true == value then "1"
    else if false == value then "0"
    else toString value;
  dash = name: with builtins; toUpper (concatStringsSep "" (map (e: if isList e then (concatStringsSep "" ([ "_" ] ++ e)) else e) (split "([[:upper:]])" name)));
  env = config: mapAttrs' (n: v: { name = dash n; value = toStr v; }) (filterAttrs (n: v: v != null) config);
  phpEnv = env (cfg.config // rec {
    appStoragePath = "${cfg.home}/storage";
    appServicesCache = "${appStoragePath}/cache/services.php";
    appPackagesCache = "${appStoragePath}/cache/packages.php";
    appConfigCache = "${appStoragePath}/cache/config.php";
    appRoutesCache = "${appStoragePath}/cache/routes-v7.php";
    appUrl = "https://${cfg.appDomain}";
    appDomain = "${cfg.appDomain}";
    adminDomain = "${cfg.appDomain}";
    sessionDomain = "${cfg.appDomain}";
    sessionSecureCookie = "true";
    trustProxies = "*";
  });
in
{
  options.services.pixelfed = {
    enable = mkEnableOption "pixelfed";

    home = mkOption {
      type = types.nullOr types.str;
      default = "/var/lib/pixelfed";
      description = ''
        Home directory of the
        <literal>pixelfed</literal> user
        which contains
        the application's state.
      '';
    };

    appDomain = mkOption {
      type = types.nullOr types.str;
      default = "";
      description = ''
        domain from which the pixelfed installation
        will be acessible.
      '';
    };

    config = {
      appName = mkOption {
        type = types.nullOr types.str;
        default = "pixelfed";
        description = "App name.";
      };
      appEnv = mkOption {
        type = types.nullOr types.str;
        default = "production";
        description = "App name.";
      };
      appKey = mkOption {
        type = types.nullOr types.str;
        default = null;
        description = "App key.";
      };
      appDebug = mkOption {
        type = types.nullOr types.str;
        default = "0";
        description = "App debug.";
      };
      openRegistration = mkOption {
        type = types.nullOr types.str;
        default = "true";
        description = ''
          Enable/disable new local account registrations.
        '';
      };
      cacheDriver = mkOption {
        type = types.nullOr types.str;
        default = "redis";
        description = "App debug.";
      };
      dbConnection = mkOption {
        type = types.enum [ "mariadb" "pgsql" "mysql" ];
        default = "mysql";
        description = "Database type.";
      };
      dbDatabase = mkOption {
        type = types.nullOr types.str;
        default = "pixelfed";
        description = "Database name.";
      };
      dbUsername = mkOption {
        type = types.nullOr types.str;
        default = "pixelfed";
        description = "Database user.";
      };
      dbPassword = mkOption {
        type = types.nullOr types.str;
        default = "pixelfed";
        description = "Database password.";
      };
      dbSocket = mkOption {
        type = types.nullOr types.str;
        default = null;
        description = "Database password.";
      };
      dbHost = mkOption {
        type = types.nullOr types.str;
        default = null;
        description = ''
          Database host.
          Note: for using Unix authentication with PostgreSQL, this should be
          set to <literal>/run/postgresql</literal>.
        '';
      };
      dbPort = mkOption {
        type = with types; nullOr (either int str);
        default = null;
        description = "Database port.";
      };
      mailUsername = mkOption {
        type = types.nullOr types.str;
        default = null;
        description = ''
          for all e-mails that are sent by your application.
        '';
      };
      mailPassword = mkOption {
        type = types.nullOr types.str;
        default = null;
        description = ''
          for all e-mails that are sent by your application.
        '';
      };
      mailDriver = mkOption {
        type = types.nullOr types.str;
        default = "smtp";
        description = ''
          Mail driver.
        '';
      };
      mailHost = mkOption {
        type = types.nullOr types.str;
        default = "smtp.mailgun.org";
        description = ''
          Mail host.
        '';
      };
      mailPort = mkOption {
        type = types.nullOr types.str;
        default = "587";
        description = ''
          Mail port.
        '';
      };
      mailFromAdress = mkOption {
        type = types.nullOr types.str;
        default = null;
        description = ''
          "hello@example.com"
          Mail sent by your application.
        '';
      };
      mailFromName = mkOption {
        type = types.nullOr types.str;
        default = null;
        description = ''
          "pixelfed"
          Mail sent by your application.
        '';
      };
      mailEncryption = mkOption {
        type = types.nullOr types.str;
        default = "tls";
        description = ''
          Mail encryption protocol.
        '';
      };
      enforceEmailVerification = mkOption {
        type = types.nullOr types.str;
        default = "0";
        description = ''
          Require email verification before
          a new user can do anything.
        '';
      };
      imageQuality = mkOption {
        type = types.nullOr types.str;
        default = "80";
        description = ''
          the image optimization quality,
          must be a value between 1-100.
        '';
      };
      pfOptimizeImages = mkOption {
        type = types.nullOr types.str;
        default = "true";
        description = ''
          Resize and optimize image uploads.
          Default: on
        '';
      };
      pfOptimizeVideos = mkOption {
        type = types.nullOr types.str;
        default = "true";
        description = ''
          Resize and optimize video uploads.
          Default: on
        '';
      };
      pfEnableCloud = mkOption {
        type = types.nullOr types.str;
        default = "0";
        description = ''
          Store media on object storage like S3,
          Digital Ocean Spaces, Rackspace
        '';
      };
    };

    poolSettings = mkOption {
      type = with types; attrsOf (oneOf [ str int bool ]);
      default = {
        "listen.owner" = "nginx";
        "listen.group" = "nginx";
        "pm" = "dynamic";
        "pm.max_children" = "32";
        "pm.start_servers" = "2";
        "pm.min_spare_servers" = "2";
        "pm.max_spare_servers" = "4";
        "pm.max_requests" = "500";
      };
      description = ''
        Options for pixelfed's PHP pool.
        See the documentation on
        <literal>php-fpm.conf</literal>
        for details on configuration directives.
      '';
    };
  };

  config = mkIf cfg.enable {

    users.users.pixelfed = {
      isSystemUser = true;
      createHome = true;
      home = cfg.home;
      group = "nginx";
    };

    services.phpfpm.pools.pixelfed = {
      user = "pixelfed";
      group = "nginx";
      phpEnv = phpEnv;
      phpPackage = phpPackage;
      settings = cfg.poolSettings;
    };

    services.nginx = {
      enable = true;

      commonHttpConfig = ''
        sendfile on;
        tcp_nopush on;
        tcp_nodelay on;
        keepalive_timeout 65;
        types_hash_max_size 4096;
      '';

      virtualHosts = {
        "localhost" = {
          default = true;
          root = "${package}/public";
          addSSL = true;
          sslCertificate = "/certs/nginx-selfsigned.crt";
          sslCertificateKey = "/certs/nginx-selfsigned.key";
          locations = {
            "~ \\.php$" = {
              extraConfig = ''
                fastcgi_split_path_info ^(.+\.php)(/.+)$;
                fastcgi_pass unix:${config.services.phpfpm.pools.pixelfed.socket};
                fastcgi_index index.php;
                include ${pkgs.nginx}/conf/fastcgi.conf;
              '';
            };
            "~ /\\.(?!well-known).*" = {
              extraConfig = ''
                deny all;
              '';
            };
            "/" = {
              extraConfig = ''
                try_files $uri $uri/ /index.php?$query_string;
              '';
            };
            "/storage/" = {
              alias = "/var/lib/pixelfed/storage/app/public/";
            };
          };
          extraConfig = ''
            add_header X-Frame-Options "SAMEORIGIN";
            add_header X-XSS-Protection "1; mode=block";
            add_header X-Content-Type-Options "nosniff";

            index index.html index.htm index.php;
            charset utf-8;
            error_page 404 /index.php;
          '';
        };
      };
    };

    systemd.services = {
      pixelfed-setup = {
        wantedBy = [ "multi-user.target" ];
        before = [ "phpfpm-pixelfed.service" "mysql.service" "nginx.service" ];
        script = ''
          if [ ! -d "/var/lib/pixelfed/storage" ]; then
            cp -av ${package}/storage /var/lib/pixelfed
            chmod -R u=rw,g=rw,o=r,a+X /var/lib/pixelfed
          fi
          mkdir -p /var/lib/pixelfed/storage/cache
        '';
        serviceConfig = {
          User = "pixelfed";
          Group = "nginx";
          Type = "oneshot";
        };
      };

      pixelfed-artisan = {
        wantedBy = [ "multi-user.target" ];
        after = [ "phpfpm-pixelfed.service" "mysql.service" "nginx.service" ];
        environment = phpEnv;
        script = ''
          ${pkgs.php74}/bin/php artisan migrate --no-interaction --force
          ${pkgs.php74}/bin/php artisan config:cache
          ${pkgs.php74}/bin/php artisan route:cache
          ${pkgs.php74}/bin/php artisan view:cache
          ${pkgs.php74}/bin/php artisan import:cities
        '';
        serviceConfig = {
          Type = "simple";
          User = "pixelfed";
          Group = "nginx";
          WorkingDirectory = "${package}/";
        };
      };
    };
  };
}
