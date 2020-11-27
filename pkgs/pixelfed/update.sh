#! /usr/bin/env nix-shell
#! nix-shell deps.nix -i bash

composer2nix \
  --config-file=composer.json \
  --lock-file=composer.lock \
  --composition=/dev/null \
  --composer-env=composer-env.nix \
  --output=php-packages.nix
  # --no-copy-composer-env
