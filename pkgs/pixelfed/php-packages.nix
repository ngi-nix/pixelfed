{composerEnv, fetchurl, fetchgit ? null, fetchhg ? null, fetchsvn ? null, noDev ? false}:

let
  packages = {
    "alchemy/binary-driver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "alchemy-binary-driver-e0615cdff315e6b4b05ada67906df6262a020d22";
        src = fetchurl {
          url = https://api.github.com/repos/alchemy-fr/BinaryDriver/zipball/e0615cdff315e6b4b05ada67906df6262a020d22;
          sha256 = "1xfxillfyyvfhc3h4q5rsgip7d6x5xj959pchvx1mr18wl9yzpcv";
        };
      };
    };
    "asm89/stack-cors" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "asm89-stack-cors-23f469e81c65e2fb7fc7bce371fbdc363fe32adf";
        src = fetchurl {
          url = https://api.github.com/repos/asm89/stack-cors/zipball/23f469e81c65e2fb7fc7bce371fbdc363fe32adf;
          sha256 = "09ls498zdhfldamylc4qx8w4yi4s7s0hb4sm7ykhs8r3vvxy9y9v";
        };
      };
    };
    "aws/aws-sdk-php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "aws-aws-sdk-php-c5b43109dc0ecf77c4a18a8504ca3023f705b306";
        src = fetchurl {
          url = https://api.github.com/repos/aws/aws-sdk-php/zipball/c5b43109dc0ecf77c4a18a8504ca3023f705b306;
          sha256 = "1x97mv8piwk9fxpycdaq8abfbkixspwb983wrlzmpxh0flj97lgs";
        };
      };
    };
    "beyondcode/laravel-self-diagnosis" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "beyondcode-laravel-self-diagnosis-fc663d553c945ba11608faea5666324a876369ac";
        src = fetchurl {
          url = https://api.github.com/repos/beyondcode/laravel-self-diagnosis/zipball/fc663d553c945ba11608faea5666324a876369ac;
          sha256 = "0mwsjgjaxckgz7531hnh5y7cn5nrfc8zf4wqywgmp84dxp0w33rd";
        };
      };
    };
    "brick/math" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "brick-math-e6f8e7d04346a95be89580f8c2c22d6c3fa65556";
        src = fetchurl {
          url = https://api.github.com/repos/brick/math/zipball/e6f8e7d04346a95be89580f8c2c22d6c3fa65556;
          sha256 = "0x7mi1dhdrmnjcy41gx34115lpykd3zmmb0rk47s4d6n2vb6yppa";
        };
      };
    };
    "cakephp/chronos" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "cakephp-chronos-30baea51824076719921c6c2d720bfd6b49e6dca";
        src = fetchurl {
          url = https://api.github.com/repos/cakephp/chronos/zipball/30baea51824076719921c6c2d720bfd6b49e6dca;
          sha256 = "0ymz4rl3rkszw2hxgj7a7z9g9cy8d2h4xdfvybkp7pwih47ar6fx";
        };
      };
    };
    "composer/semver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-semver-c6bea70230ef4dd483e6bbcab6005f682ed3a8de";
        src = fetchurl {
          url = https://api.github.com/repos/composer/semver/zipball/c6bea70230ef4dd483e6bbcab6005f682ed3a8de;
          sha256 = "11f4az7s736nj8n52wjanlpcpfk8ijx9wii5wmwbylp0s4s20ryd";
        };
      };
    };
    "defuse/php-encryption" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "defuse-php-encryption-0f407c43b953d571421e0020ba92082ed5fb7620";
        src = fetchurl {
          url = https://api.github.com/repos/defuse/php-encryption/zipball/0f407c43b953d571421e0020ba92082ed5fb7620;
          sha256 = "1fwmhxzw27x37hmbc056liymbq0j39yi6qf8as59n2kkz6xgnpm5";
        };
      };
    };
    "dnoegel/php-xdg-base-dir" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "dnoegel-php-xdg-base-dir-8f8a6e48c5ecb0f991c2fdcf5f154a47d85f9ffd";
        src = fetchurl {
          url = https://api.github.com/repos/dnoegel/php-xdg-base-dir/zipball/8f8a6e48c5ecb0f991c2fdcf5f154a47d85f9ffd;
          sha256 = "02n4b4wkwncbqiz8mw2rq35flkkhn7h6c0bfhjhs32iay1y710fq";
        };
      };
    };
    "doctrine/cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-cache-13e3381b25847283a91948d04640543941309727";
        src = fetchurl {
          url = https://api.github.com/repos/doctrine/cache/zipball/13e3381b25847283a91948d04640543941309727;
          sha256 = "088fxbpjssp8x95qr3ip2iynxrimimrby03xlsvp2254vcyx94c5";
        };
      };
    };
    "doctrine/dbal" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-dbal-03ca23afc2ee062f5d3e32426ad37c34a4770dcf";
        src = fetchurl {
          url = https://api.github.com/repos/doctrine/dbal/zipball/03ca23afc2ee062f5d3e32426ad37c34a4770dcf;
          sha256 = "0bf9m3gpknk0h5k21p3q1rbndx8kfl2cbjkpajfhh6psqfw8p5n2";
        };
      };
    };
    "doctrine/event-manager" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-event-manager-41370af6a30faa9dc0368c4a6814d596e81aba7f";
        src = fetchurl {
          url = https://api.github.com/repos/doctrine/event-manager/zipball/41370af6a30faa9dc0368c4a6814d596e81aba7f;
          sha256 = "0pn2aiwl4fvv6fcwar9alng2yrqy8bzc58n4bkp6y2jnpw5gp4m8";
        };
      };
    };
    "doctrine/inflector" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-inflector-9cf661f4eb38f7c881cac67c75ea9b00bf97b210";
        src = fetchurl {
          url = https://api.github.com/repos/doctrine/inflector/zipball/9cf661f4eb38f7c881cac67c75ea9b00bf97b210;
          sha256 = "0gkaw5aqkdppd7cz1n46kdms0bv8kzbnpjh75jnhv98p9fik7f24";
        };
      };
    };
    "doctrine/lexer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-lexer-e864bbf5904cb8f5bb334f99209b48018522f042";
        src = fetchurl {
          url = https://api.github.com/repos/doctrine/lexer/zipball/e864bbf5904cb8f5bb334f99209b48018522f042;
          sha256 = "11lg9fcy0crb8inklajhx3kyffdbx7xzdj8kwl21xsgq9nm9iwvv";
        };
      };
    };
    "dragonmantank/cron-expression" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "dragonmantank-cron-expression-72b6fbf76adb3cf5bc0db68559b33d41219aba27";
        src = fetchurl {
          url = https://api.github.com/repos/dragonmantank/cron-expression/zipball/72b6fbf76adb3cf5bc0db68559b33d41219aba27;
          sha256 = "10p40634ybb8l86fmk2v5vf3wig2mpgn6872napmcms1kdfjw3b3";
        };
      };
    };
    "egulias/email-validator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "egulias-email-validator-840d5603eb84cc81a6a0382adac3293e57c1c64c";
        src = fetchurl {
          url = https://api.github.com/repos/egulias/EmailValidator/zipball/840d5603eb84cc81a6a0382adac3293e57c1c64c;
          sha256 = "02gwz6lw5cx3ja7pvgyqx37qs4ks7ki5lwii1j8a6d7x90s4y2jy";
        };
      };
    };
    "evenement/evenement" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "evenement-evenement-531bfb9d15f8aa57454f5f0285b18bec903b8fb7";
        src = fetchurl {
          url = https://api.github.com/repos/igorw/evenement/zipball/531bfb9d15f8aa57454f5f0285b18bec903b8fb7;
          sha256 = "02mi1lrga41caa25whr6sj9hmmlfjp10l0d0fq8kc3d4483pm9rr";
        };
      };
    };
    "ezyang/htmlpurifier" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "ezyang-htmlpurifier-08e27c97e4c6ed02f37c5b2b20488046c8d90d75";
        src = fetchurl {
          url = https://api.github.com/repos/ezyang/htmlpurifier/zipball/08e27c97e4c6ed02f37c5b2b20488046c8d90d75;
          sha256 = "0jna0hhd63w9bs39kxw4gid35jg9rg928lzk3rrcvalq9zv957fz";
        };
      };
    };
    "fideloper/proxy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "fideloper-proxy-9beebf48a1c344ed67c1d36bb1b8709db7c3c1a8";
        src = fetchurl {
          url = https://api.github.com/repos/fideloper/TrustedProxy/zipball/9beebf48a1c344ed67c1d36bb1b8709db7c3c1a8;
          sha256 = "0hblx9qgny5cqms36s70nkgday191r3vagfgrbr26km1rrnpkkcj";
        };
      };
    };
    "firebase/php-jwt" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "firebase-php-jwt-feb0e820b8436873675fd3aca04f3728eb2185cb";
        src = fetchurl {
          url = https://api.github.com/repos/firebase/php-jwt/zipball/feb0e820b8436873675fd3aca04f3728eb2185cb;
          sha256 = "1nylp68wg6qr1w3nr1i3nn5hr2xilkvy5k2g72yl0flqs0pnl93n";
        };
      };
    };
    "fruitcake/laravel-cors" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "fruitcake-laravel-cors-dbfc311b25d4873c3c2382b26860be3567492bd6";
        src = fetchurl {
          url = https://api.github.com/repos/fruitcake/laravel-cors/zipball/dbfc311b25d4873c3c2382b26860be3567492bd6;
          sha256 = "1k6i98r5yav53nnxrxwn2hg9r2rmscc8dvv1hvwcba7hrxl4r9sd";
        };
      };
    };
    "geerlingguy/ping" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "geerlingguy-ping-e0206326e23c99e3e8820e24705f8ca517adff93";
        src = fetchurl {
          url = https://api.github.com/repos/geerlingguy/Ping/zipball/e0206326e23c99e3e8820e24705f8ca517adff93;
          sha256 = "0vl2s6as1r1kfdfx4q73bsj8fmnjlxz9r2w8f3gwxav1m97v5dvs";
        };
      };
    };
    "guzzlehttp/guzzle" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "guzzlehttp-guzzle-9d4290de1cfd701f38099ef7e183b64b4b7b0c5e";
        src = fetchurl {
          url = https://api.github.com/repos/guzzle/guzzle/zipball/9d4290de1cfd701f38099ef7e183b64b4b7b0c5e;
          sha256 = "1dlrdpil0173cmx73ghy8iis2j0lk00dzv3n166d0riky21n8djb";
        };
      };
    };
    "guzzlehttp/promises" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "guzzlehttp-promises-a59da6cf61d80060647ff4d3eb2c03a2bc694646";
        src = fetchurl {
          url = https://api.github.com/repos/guzzle/promises/zipball/a59da6cf61d80060647ff4d3eb2c03a2bc694646;
          sha256 = "1kpl91fzalcgkcs16lpakvzcnbkry3id4ynx6xhq477p4fipdciz";
        };
      };
    };
    "guzzlehttp/psr7" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "guzzlehttp-psr7-239400de7a173fe9901b9ac7c06497751f00727a";
        src = fetchurl {
          url = https://api.github.com/repos/guzzle/psr7/zipball/239400de7a173fe9901b9ac7c06497751f00727a;
          sha256 = "0mfq93x7ayix6l3v5jkk40a9hnmrxaqr9vk1r26q39d1s6292ma7";
        };
      };
    };
    "intervention/image" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "intervention-image-abbf18d5ab8367f96b3205ca3c89fb2fa598c69e";
        src = fetchurl {
          url = https://api.github.com/repos/Intervention/image/zipball/abbf18d5ab8367f96b3205ca3c89fb2fa598c69e;
          sha256 = "1msfpr9bip69bmhg23ka2f43phgb6dq5z604j5psjh3xd86r6c5d";
        };
      };
    };
    "jaybizzle/crawler-detect" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "jaybizzle-crawler-detect-0ffea34489b258a2709bfe93a9553e1efa5d1904";
        src = fetchurl {
          url = https://api.github.com/repos/JayBizzle/Crawler-Detect/zipball/0ffea34489b258a2709bfe93a9553e1efa5d1904;
          sha256 = "0y53k71qr6wdz55xx447hyrz4in0l36h99q4f6zqdv914x48r918";
        };
      };
    };
    "jenssegers/agent" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "jenssegers-agent-daa11c43729510b3700bc34d414664966b03bffe";
        src = fetchurl {
          url = https://api.github.com/repos/jenssegers/agent/zipball/daa11c43729510b3700bc34d414664966b03bffe;
          sha256 = "0f0wy69w9mdsajfgriwlnpqhqxp83q44p6ggcd6h1bi8ri3h0897";
        };
      };
    };
    "laminas/laminas-diactoros" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laminas-laminas-diactoros-36ef09b73e884135d2059cc498c938e90821bb57";
        src = fetchurl {
          url = https://api.github.com/repos/laminas/laminas-diactoros/zipball/36ef09b73e884135d2059cc498c938e90821bb57;
          sha256 = "0qzf3890j1976q6f684fydz49gd48kg3hwipzhsw0dgbcgmr8qs6";
        };
      };
    };
    "laminas/laminas-zendframework-bridge" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laminas-laminas-zendframework-bridge-4939c81f63a8a4968c108c440275c94955753b19";
        src = fetchurl {
          url = https://api.github.com/repos/laminas/laminas-zendframework-bridge/zipball/4939c81f63a8a4968c108c440275c94955753b19;
          sha256 = "0ig89amx88a27bkzynwx8p40b2i20nysginy6pglq2niqjf6wih9";
        };
      };
    };
    "laravel/framework" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-framework-17777a92da9b3cf0026f26462d289d596420e6d0";
        src = fetchurl {
          url = https://api.github.com/repos/laravel/framework/zipball/17777a92da9b3cf0026f26462d289d596420e6d0;
          sha256 = "0nlg4bv4ix3chh2xdgn2vfrh4drh2xwdxkg54m6pgsflhq30wjg3";
        };
      };
    };
    "laravel/helpers" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-helpers-b4b8d6e84a6306fc88870f61a244d8c537779f2d";
        src = fetchurl {
          url = https://api.github.com/repos/laravel/helpers/zipball/b4b8d6e84a6306fc88870f61a244d8c537779f2d;
          sha256 = "0hqv5la256az655gdbs2sf122mjqx0r075qml1lazzz2pqaxq7h3";
        };
      };
    };
    "laravel/horizon" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-horizon-ffce0a8f69c19bdd63a22d972e605388903d70b4";
        src = fetchurl {
          url = https://api.github.com/repos/laravel/horizon/zipball/ffce0a8f69c19bdd63a22d972e605388903d70b4;
          sha256 = "0z456imfhc3ymphyzsaadvlvlq0gb6gnmsdf138ghz4hhzgni6c0";
        };
      };
    };
    "laravel/passport" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-passport-6affa6ed600c5f8909385fbae7cf6f8af3db2d39";
        src = fetchurl {
          url = https://api.github.com/repos/laravel/passport/zipball/6affa6ed600c5f8909385fbae7cf6f8af3db2d39;
          sha256 = "0fpz2axdaqbv4ar3jx0pyq8s7jagq0xgldxb3kb1vxdx3ji0gdr2";
        };
      };
    };
    "laravel/tinker" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-tinker-58424c24e8aec31c3a3ac54eb3adb15e8a0a067b";
        src = fetchurl {
          url = https://api.github.com/repos/laravel/tinker/zipball/58424c24e8aec31c3a3ac54eb3adb15e8a0a067b;
          sha256 = "0aj61z8ap6wn3j5q4g62kyhhhqxpnzxy4141sajwdj72ybsvrsm0";
        };
      };
    };
    "laravel/ui" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-ui-fb1404f04ece6eee128e3fb750d3a1e064238b33";
        src = fetchurl {
          url = https://api.github.com/repos/laravel/ui/zipball/fb1404f04ece6eee128e3fb750d3a1e064238b33;
          sha256 = "1lr8wbnp85q6k7q18ayaqwl71ah5zb9kiw896dp9vj11a5pzg32v";
        };
      };
    };
    "lcobucci/jwt" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "lcobucci-jwt-c1123697f6a2ec29162b82f170dd4a491f524773";
        src = fetchurl {
          url = https://api.github.com/repos/lcobucci/jwt/zipball/c1123697f6a2ec29162b82f170dd4a491f524773;
          sha256 = "0svjp4il41c421aq9ikchwcby3sdwv6s1ixs46c3r0dv254qyk8q";
        };
      };
    };
    "league/commonmark" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-commonmark-21819c989e69bab07e933866ad30c7e3f32984ba";
        src = fetchurl {
          url = https://api.github.com/repos/thephpleague/commonmark/zipball/21819c989e69bab07e933866ad30c7e3f32984ba;
          sha256 = "1fzqi1x5dl87d9wp8g9v5d26fyd065ia7xgraqh7ddsb4rp2d7ka";
        };
      };
    };
    "league/event" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-event-d2cc124cf9a3fab2bb4ff963307f60361ce4d119";
        src = fetchurl {
          url = https://api.github.com/repos/thephpleague/event/zipball/d2cc124cf9a3fab2bb4ff963307f60361ce4d119;
          sha256 = "1fc8aj0mpbrnh3b93gn8pypix28nf2gfvi403kfl7ibh5iz6ds5l";
        };
      };
    };
    "league/flysystem" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-flysystem-9be3b16c877d477357c015cec057548cf9b2a14a";
        src = fetchurl {
          url = https://api.github.com/repos/thephpleague/flysystem/zipball/9be3b16c877d477357c015cec057548cf9b2a14a;
          sha256 = "0mhlr6l75j58xwbadq30x58s67434195zlpdax6ix4nkr7fc907j";
        };
      };
    };
    "league/flysystem-aws-s3-v3" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-flysystem-aws-s3-v3-af7384a12f7cd7d08183390d930c9d0ec629c990";
        src = fetchurl {
          url = https://api.github.com/repos/thephpleague/flysystem-aws-s3-v3/zipball/af7384a12f7cd7d08183390d930c9d0ec629c990;
          sha256 = "1bcpfgsvfl177l7401kswcdrcpm3nd3v4znc2gp8l8gq76nfz9i4";
        };
      };
    };
    "league/flysystem-cached-adapter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-flysystem-cached-adapter-d1925efb2207ac4be3ad0c40b8277175f99ffaff";
        src = fetchurl {
          url = https://api.github.com/repos/thephpleague/flysystem-cached-adapter/zipball/d1925efb2207ac4be3ad0c40b8277175f99ffaff;
          sha256 = "1gvp89cl27ypcy4h0qjm04dc5k77jfm95m4paasglzfsi6g40i71";
        };
      };
    };
    "league/iso3166" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-iso3166-aed3b32fc293afdf2c6c6a322c2408eb5d20804a";
        src = fetchurl {
          url = https://api.github.com/repos/thephpleague/iso3166/zipball/aed3b32fc293afdf2c6c6a322c2408eb5d20804a;
          sha256 = "0g2rp8zplazzhn23cs1x4qrz7znjf0cww0bq5gl1hcjzh7p5025i";
        };
      };
    };
    "league/mime-type-detection" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-mime-type-detection-fda190b62b962d96a069fcc414d781db66d65b69";
        src = fetchurl {
          url = https://api.github.com/repos/thephpleague/mime-type-detection/zipball/fda190b62b962d96a069fcc414d781db66d65b69;
          sha256 = "15vxpkks81cxpwjxaw5kv5gwxx897jbmf6c4jdinw46rf6qpw1b0";
        };
      };
    };
    "league/oauth2-server" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-oauth2-server-09f22e8121fa1832962dba18213b80d4267ef8a3";
        src = fetchurl {
          url = https://api.github.com/repos/thephpleague/oauth2-server/zipball/09f22e8121fa1832962dba18213b80d4267ef8a3;
          sha256 = "1hkjd0gzr0rgg4102sk1dj9d1wb77vrlvzk93r6kk711m12dgz3l";
        };
      };
    };
    "mobiledetect/mobiledetectlib" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "mobiledetect-mobiledetectlib-6f8113f57a508494ca36acbcfa2dc2d923c7ed5b";
        src = fetchurl {
          url = https://api.github.com/repos/serbanghita/Mobile-Detect/zipball/6f8113f57a508494ca36acbcfa2dc2d923c7ed5b;
          sha256 = "0cf40xla0dw382cfm51627wrzzypq59s7skcznspn14bdcjsvbmx";
        };
      };
    };
    "monolog/monolog" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "monolog-monolog-f9eee5cec93dfb313a38b6b288741e84e53f02d5";
        src = fetchurl {
          url = https://api.github.com/repos/Seldaek/monolog/zipball/f9eee5cec93dfb313a38b6b288741e84e53f02d5;
          sha256 = "0h0675fk37wxaska7civn7dxan3hgp8yhfdxjdn3ywihlwz3z7i1";
        };
      };
    };
    "mtdowling/jmespath.php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "mtdowling-jmespath.php-42dae2cbd13154083ca6d70099692fef8ca84bfb";
        src = fetchurl {
          url = https://api.github.com/repos/jmespath/jmespath.php/zipball/42dae2cbd13154083ca6d70099692fef8ca84bfb;
          sha256 = "157pdx45dmkxwxyq8vdjfci24fw7kl3yc2gj1cifp9kaia7mwlkk";
        };
      };
    };
    "nesbot/carbon" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nesbot-carbon-7af467873250583cc967a59ee9df29fabab193c1";
        src = fetchurl {
          url = https://api.github.com/repos/briannesbitt/Carbon/zipball/7af467873250583cc967a59ee9df29fabab193c1;
          sha256 = "0a95b0kjija3rrhpi8xr2al42hyf2yiw640gvm9ngzkyhvcaxkdr";
        };
      };
    };
    "neutron/temporary-filesystem" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "neutron-temporary-filesystem-3c55497da8d7762fb4dcabc91d54a5de510e3c99";
        src = fetchurl {
          url = https://api.github.com/repos/romainneutron/Temporary-Filesystem/zipball/3c55497da8d7762fb4dcabc91d54a5de510e3c99;
          sha256 = "0pvfspbqm1hybcjyhssvfs3qlvyvs0h05cb5z5n87zsjrvk2bgi2";
        };
      };
    };
    "nikic/php-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nikic-php-parser-88e519766fc58bd46b8265561fb79b54e2e00b28";
        src = fetchurl {
          url = https://api.github.com/repos/nikic/PHP-Parser/zipball/88e519766fc58bd46b8265561fb79b54e2e00b28;
          sha256 = "1sfqdns0axvda7kxci1l6ja36nm3y280nppnx9rhzyb6jzri6zhz";
        };
      };
    };
    "nyholm/psr7" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nyholm-psr7-c17f4f73985f62054a331cbc4ffdf9868c4ef256";
        src = fetchurl {
          url = https://api.github.com/repos/Nyholm/psr7/zipball/c17f4f73985f62054a331cbc4ffdf9868c4ef256;
          sha256 = "1y002nv4n9nd5g0mw27xnvjrm3ksg8z728m05lhyzbvfgzr1c8vd";
        };
      };
    };
    "opis/closure" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "opis-closure-e8d34df855b0a0549a300cb8cb4db472556e8aa9";
        src = fetchurl {
          url = https://api.github.com/repos/opis/closure/zipball/e8d34df855b0a0549a300cb8cb4db472556e8aa9;
          sha256 = "1g5fpd3gjqs0yxin6nd4z2w10gcq6isngk5x3zng6z1dw8ccqma0";
        };
      };
    };
    "paragonie/constant_time_encoding" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "paragonie-constant_time_encoding-47a1cedd2e4d52688eb8c96469c05ebc8fd28fa2";
        src = fetchurl {
          url = https://api.github.com/repos/paragonie/constant_time_encoding/zipball/47a1cedd2e4d52688eb8c96469c05ebc8fd28fa2;
          sha256 = "00yfq2wwrdf16jadfr3jn1q2sx2vai05x7xin2i2qjlhlpqj8vk8";
        };
      };
    };
    "paragonie/random_compat" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "paragonie-random_compat-0a58ef6e3146256cc3dc7cc393927bcc7d1b72db";
        src = fetchurl {
          url = https://api.github.com/repos/paragonie/random_compat/zipball/0a58ef6e3146256cc3dc7cc393927bcc7d1b72db;
          sha256 = "10sr7y5mg7y6drxf3bibcnj8afm5ax4qwwfv8v9jaxkl5lxbqgm2";
        };
      };
    };
    "pbmedia/laravel-ffmpeg" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "pbmedia-laravel-ffmpeg-2451ee39d893b9bc067e573893a141c9d8da01c9";
        src = fetchurl {
          url = https://api.github.com/repos/protonemedia/laravel-ffmpeg/zipball/2451ee39d893b9bc067e573893a141c9d8da01c9;
          sha256 = "1xxq6a4sh2nhx2ha5dq8jw07bwa5cwg2rcaya1md7mg814cxfp3w";
        };
      };
    };
    "php-ffmpeg/php-ffmpeg" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "php-ffmpeg-php-ffmpeg-4175c02b7d9f7e1a02cec2ba73474266ba2c5fa1";
        src = fetchurl {
          url = https://api.github.com/repos/PHP-FFMpeg/PHP-FFMpeg/zipball/4175c02b7d9f7e1a02cec2ba73474266ba2c5fa1;
          sha256 = "0nk9d1qqijsrlsxs2rck12mp6bpyhjqfa7blkrk3w2awsr6k305j";
        };
      };
    };
    "php-http/message-factory" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "php-http-message-factory-a478cb11f66a6ac48d8954216cfed9aa06a501a1";
        src = fetchurl {
          url = https://api.github.com/repos/php-http/message-factory/zipball/a478cb11f66a6ac48d8954216cfed9aa06a501a1;
          sha256 = "13drpc83bq332hz0b97whibkm7jpk56msq4yppw9nmrchzwgy7cs";
        };
      };
    };
    "phpoption/phpoption" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpoption-phpoption-994ecccd8f3283ecf5ac33254543eb0ac946d525";
        src = fetchurl {
          url = https://api.github.com/repos/schmittjoh/php-option/zipball/994ecccd8f3283ecf5ac33254543eb0ac946d525;
          sha256 = "1snrnfvqhnr5z9llf8kbqk9l97gfyp8gghmhi1ng8qx5xzv1anr7";
        };
      };
    };
    "phpseclib/phpseclib" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpseclib-phpseclib-d1ca58cf33cb21046d702ae3a7b14fdacd9f3260";
        src = fetchurl {
          url = https://api.github.com/repos/phpseclib/phpseclib/zipball/d1ca58cf33cb21046d702ae3a7b14fdacd9f3260;
          sha256 = "14a2kpxbx9zffk6z4cwwsjx2q33d99zvrkknca2j53n75i9mbra4";
        };
      };
    };
    "pixelfed/bacon-qr-code" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "pixelfed-bacon-qr-code-912bb5dba5eea165e500abb8ed36e59971d6d724";
        src = fetchurl {
          url = https://api.github.com/repos/pixelfed/BaconQrCode/zipball/912bb5dba5eea165e500abb8ed36e59971d6d724;
          sha256 = "11iqv4d4hpq6lbgsf06zsdypm7q7iyr5wdd5x2wj46clmbpmyi88";
        };
      };
    };
    "pixelfed/fractal" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "pixelfed-fractal-faff10c9f3e3300b1571ef41926f933a9cce4782";
        src = fetchurl {
          url = https://api.github.com/repos/pixelfed/fractal/zipball/faff10c9f3e3300b1571ef41926f933a9cce4782;
          sha256 = "054zbf39ghxk7xydphikxpgkw7hivxmjqzwpcqnpw2vpn3giwfay";
        };
      };
    };
    "pixelfed/google2fa" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "pixelfed-google2fa-919ecec68074a27818451d8653029773a2391fe5";
        src = fetchurl {
          url = https://api.github.com/repos/pixelfed/google2fa/zipball/919ecec68074a27818451d8653029773a2391fe5;
          sha256 = "15cmmd0hyi4lwxp7dqh0zdx31sl966bagky2mpxxnpfc3id8z2m6";
        };
      };
    };
    "pixelfed/laravel-snowflake" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "pixelfed-laravel-snowflake-69255870dcbf949feac889dfc09180a6fef77f6d";
        src = fetchurl {
          url = https://api.github.com/repos/pixelfed/laravel-snowflake/zipball/69255870dcbf949feac889dfc09180a6fef77f6d;
          sha256 = "1wsgl9066z1zs751msqn5ydc6mz9m22wchy56qk9igjnjmk6g2pj";
        };
      };
    };
    "pixelfed/zttp" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "pixelfed-zttp-9a95a42716eb3e71a0a88411805737965bb77c05";
        src = fetchurl {
          url = https://api.github.com/repos/pixelfed/zttp/zipball/9a95a42716eb3e71a0a88411805737965bb77c05;
          sha256 = "1069qxaz5338sqm1kziwr46czjh55vjvrlzmw8hzsf0pz8ykywln";
        };
      };
    };
    "predis/predis" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "predis-predis-8be2418f0116572f1937083daf5cceb1bddc9f0d";
        src = fetchurl {
          url = https://api.github.com/repos/predis/predis/zipball/8be2418f0116572f1937083daf5cceb1bddc9f0d;
          sha256 = "114cmx8y1kd9dzazvwdzwqq0829a9c16sxvih3y7fz2bz301hbqs";
        };
      };
    };
    "psr/cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-cache-d11b50ad223250cf17b86e38383413f5a6764bf8";
        src = fetchurl {
          url = https://api.github.com/repos/php-fig/cache/zipball/d11b50ad223250cf17b86e38383413f5a6764bf8;
          sha256 = "06i2k3dx3b4lgn9a4v1dlgv8l9wcl4kl7vzhh63lbji0q96hv8qz";
        };
      };
    };
    "psr/container" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-container-b7ce3b176482dbbc1245ebf52b181af44c2cf55f";
        src = fetchurl {
          url = https://api.github.com/repos/php-fig/container/zipball/b7ce3b176482dbbc1245ebf52b181af44c2cf55f;
          sha256 = "0rkz64vgwb0gfi09klvgay4qnw993l1dc03vyip7d7m2zxi6cy4j";
        };
      };
    };
    "psr/event-dispatcher" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-event-dispatcher-dbefd12671e8a14ec7f180cab83036ed26714bb0";
        src = fetchurl {
          url = https://api.github.com/repos/php-fig/event-dispatcher/zipball/dbefd12671e8a14ec7f180cab83036ed26714bb0;
          sha256 = "05nicsd9lwl467bsv4sn44fjnnvqvzj1xqw2mmz9bac9zm66fsjd";
        };
      };
    };
    "psr/http-factory" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-http-factory-12ac7fcd07e5b077433f5f2bee95b3a771bf61be";
        src = fetchurl {
          url = https://api.github.com/repos/php-fig/http-factory/zipball/12ac7fcd07e5b077433f5f2bee95b3a771bf61be;
          sha256 = "0inbnqpc5bfhbbda9dwazsrw9xscfnc8rdx82q1qm3r446mc1vds";
        };
      };
    };
    "psr/http-message" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-http-message-f6561bf28d520154e4b0ec72be95418abe6d9363";
        src = fetchurl {
          url = https://api.github.com/repos/php-fig/http-message/zipball/f6561bf28d520154e4b0ec72be95418abe6d9363;
          sha256 = "195dd67hva9bmr52iadr4kyp2gw2f5l51lplfiay2pv6l9y4cf45";
        };
      };
    };
    "psr/log" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-log-0f73288fd15629204f9d42b7055f72dacbe811fc";
        src = fetchurl {
          url = https://api.github.com/repos/php-fig/log/zipball/0f73288fd15629204f9d42b7055f72dacbe811fc;
          sha256 = "1npi9ggl4qll4sdxz1xgp8779ia73gwlpjxbb1f1cpl1wn4s42r4";
        };
      };
    };
    "psr/simple-cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-simple-cache-408d5eafb83c57f6365a3ca330ff23aa4a5fa39b";
        src = fetchurl {
          url = https://api.github.com/repos/php-fig/simple-cache/zipball/408d5eafb83c57f6365a3ca330ff23aa4a5fa39b;
          sha256 = "1djgzclkamjxi9jy4m9ggfzgq1vqxaga2ip7l3cj88p7rwkzjxgw";
        };
      };
    };
    "psy/psysh" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psy-psysh-a8aec1b2981ab66882a01cce36a49b6317dc3560";
        src = fetchurl {
          url = https://api.github.com/repos/bobthecow/psysh/zipball/a8aec1b2981ab66882a01cce36a49b6317dc3560;
          sha256 = "1bc58x39hyb2r2h54dmm4d7k29iwkawj3jk7v6xbz7zc3ghnh5vd";
        };
      };
    };
    "ralouphie/getallheaders" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "ralouphie-getallheaders-120b605dfeb996808c31b6477290a714d356e822";
        src = fetchurl {
          url = https://api.github.com/repos/ralouphie/getallheaders/zipball/120b605dfeb996808c31b6477290a714d356e822;
          sha256 = "1bv7ndkkankrqlr2b4kw7qp3fl0dxi6bp26bnim6dnlhavd6a0gg";
        };
      };
    };
    "ramsey/collection" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "ramsey-collection-044184884e3c803e4cbb6451386cb71562939b18";
        src = fetchurl {
          url = https://api.github.com/repos/ramsey/collection/zipball/044184884e3c803e4cbb6451386cb71562939b18;
          sha256 = "1zj792m0n4jpp26qcf7j32gggg71765fnnybdl5bryad2ra43gwx";
        };
      };
    };
    "ramsey/uuid" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "ramsey-uuid-cd4032040a750077205918c86049aa0f43d22947";
        src = fetchurl {
          url = https://api.github.com/repos/ramsey/uuid/zipball/cd4032040a750077205918c86049aa0f43d22947;
          sha256 = "00hnl12crjs7kh67jhhjg157pma4ka5c5rpz46sdx8m207vhylzq";
        };
      };
    };
    "spatie/db-dumper" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "spatie-db-dumper-56448e8f41d4e8e83babf701d5708b1e597e8ec6";
        src = fetchurl {
          url = https://api.github.com/repos/spatie/db-dumper/zipball/56448e8f41d4e8e83babf701d5708b1e597e8ec6;
          sha256 = "0v25zj8i7v2gjr2j410ipz2gkdijsnwjyvz1sczr9zh3j4ihwd8y";
        };
      };
    };
    "spatie/image-optimizer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "spatie-image-optimizer-9c1d470e34b28b715d25edb539dd6c899461527c";
        src = fetchurl {
          url = https://api.github.com/repos/spatie/image-optimizer/zipball/9c1d470e34b28b715d25edb539dd6c899461527c;
          sha256 = "0zdyykbfnn252gg19idzgy2qq8r65h8bwg0cwc6xz9va0kpxprq5";
        };
      };
    };
    "spatie/laravel-backup" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "spatie-laravel-backup-3ede36961b79b6ea4a6b5f708f2cc60fee74ad6c";
        src = fetchurl {
          url = https://api.github.com/repos/spatie/laravel-backup/zipball/3ede36961b79b6ea4a6b5f708f2cc60fee74ad6c;
          sha256 = "1i6j0qc8g80d9jxb4xhybgym8sykdackfqwqdahhmgs4mc4fg6ps";
        };
      };
    };
    "spatie/laravel-image-optimizer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "spatie-laravel-image-optimizer-0024b9a475055365515e623ebbd14b8949a8ba62";
        src = fetchurl {
          url = https://api.github.com/repos/spatie/laravel-image-optimizer/zipball/0024b9a475055365515e623ebbd14b8949a8ba62;
          sha256 = "1g8p400a8rrjbak9iszpbz0fbf4a32z1rxq9scirvpi1r38cgjng";
        };
      };
    };
    "spatie/temporary-directory" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "spatie-temporary-directory-eeb84a7a3543e90759cd852ccb468e3d3340d99d";
        src = fetchurl {
          url = https://api.github.com/repos/spatie/temporary-directory/zipball/eeb84a7a3543e90759cd852ccb468e3d3340d99d;
          sha256 = "0j05c0ai0m5pnbfmyfi26hrdy7b5lizvfdhsc1rg00k8hpkmr68j";
        };
      };
    };
    "stevebauman/purify" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "stevebauman-purify-eac2e29ddb7c5e6079f7c4f4955cdbff0b224153";
        src = fetchurl {
          url = https://api.github.com/repos/stevebauman/purify/zipball/eac2e29ddb7c5e6079f7c4f4955cdbff0b224153;
          sha256 = "1apkp9f52jm4l10jm3h57d15yrbmrbaxmnjjs1a6r7412ciklaa1";
        };
      };
    };
    "swiftmailer/swiftmailer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "swiftmailer-swiftmailer-149cfdf118b169f7840bbe3ef0d4bc795d1780c9";
        src = fetchurl {
          url = https://api.github.com/repos/swiftmailer/swiftmailer/zipball/149cfdf118b169f7840bbe3ef0d4bc795d1780c9;
          sha256 = "0kscflkky6h7p7ambsf19rywnlnqslc503958cyriq5lg91nj9ri";
        };
      };
    };
    "symfony/console" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-console-186f395b256065ba9b890c0a4e48a91d598fa2cf";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/console/zipball/186f395b256065ba9b890c0a4e48a91d598fa2cf;
          sha256 = "09mw9jhwhf2pj1hrsjl8yy81izr8k6vg35x8h13jdpzl02cwj2a2";
        };
      };
    };
    "symfony/css-selector" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-css-selector-e544e24472d4c97b2d11ade7caacd446727c6bf9";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/css-selector/zipball/e544e24472d4c97b2d11ade7caacd446727c6bf9;
          sha256 = "1a1022qd93jw6drrsc1p7rhjv694n0qk0zg9mz6mfwihrnyrjf8n";
        };
      };
    };
    "symfony/deprecation-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-deprecation-contracts-5e20b83385a77593259c9f8beb2c43cd03b2ac14";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/deprecation-contracts/zipball/5e20b83385a77593259c9f8beb2c43cd03b2ac14;
          sha256 = "0h806z41pxz0n8qd030lh1m4rcjrw57naq1rwkj66w6d6jj0fqxz";
        };
      };
    };
    "symfony/error-handler" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-error-handler-525636d4b84e06c6ca72d96b6856b5b169416e6a";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/error-handler/zipball/525636d4b84e06c6ca72d96b6856b5b169416e6a;
          sha256 = "1xh87p4qra92yqykgkb7s0irgxxddw60ss4m4jw2sk7azfpcmbsx";
        };
      };
    };
    "symfony/event-dispatcher" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-event-dispatcher-94871fc0a69c3c5da57764187724cdce0755899c";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/event-dispatcher/zipball/94871fc0a69c3c5da57764187724cdce0755899c;
          sha256 = "1dng98zw664vmqds4a0n40yszh6h2qgagjk9gfz5qfpxp1icg3ma";
        };
      };
    };
    "symfony/event-dispatcher-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-event-dispatcher-contracts-f6f613d74cfc5a623fc36294d3451eb7fa5a042b";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/event-dispatcher-contracts/zipball/f6f613d74cfc5a623fc36294d3451eb7fa5a042b;
          sha256 = "0s3l69gfv73shl8bk5zg3j4cbzcp18adg2imds8b46khbnri3xgf";
        };
      };
    };
    "symfony/filesystem" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-filesystem-f7b9ed6142a34252d219801d9767dedbd711da1a";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/filesystem/zipball/f7b9ed6142a34252d219801d9767dedbd711da1a;
          sha256 = "1jfpjacygxhw4zik71s42347996ywrylcxj92wgyhzcpsilhgvgx";
        };
      };
    };
    "symfony/finder" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-finder-2b765f0cf6612b3636e738c0689b29aa63088d5d";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/finder/zipball/2b765f0cf6612b3636e738c0689b29aa63088d5d;
          sha256 = "017329hsh943ii38kp43549w9n3fr4sfhh64bvlp7n3bmk0xpvwx";
        };
      };
    };
    "symfony/http-foundation" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-http-foundation-41a4647f12870e9d41d9a7d72ff0614a27208558";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/http-foundation/zipball/41a4647f12870e9d41d9a7d72ff0614a27208558;
          sha256 = "0j17q4gq41ym0kz2h7i1xpb3wnig9byb7vrmfc412ngmfbh3v8vy";
        };
      };
    };
    "symfony/http-kernel" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-http-kernel-3e32676e6cb5d2081c91a56783471ff8a7f7110b";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/http-kernel/zipball/3e32676e6cb5d2081c91a56783471ff8a7f7110b;
          sha256 = "0g9z0ww6anvai0zinscmz3gf4zxsby4id8nwiqm3p20qizi2dbb0";
        };
      };
    };
    "symfony/mime" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-mime-89a2c9b4cb7b5aa516cf55f5194c384f444c81dc";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/mime/zipball/89a2c9b4cb7b5aa516cf55f5194c384f444c81dc;
          sha256 = "1n353wlrk8daw551l0dhsfag334hmvmgszqxqs9bs0qvsdrmqccv";
        };
      };
    };
    "symfony/polyfill-ctype" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-ctype-1c302646f6efc070cd46856e600e5e0684d6b454";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-ctype/zipball/1c302646f6efc070cd46856e600e5e0684d6b454;
          sha256 = "17piwz6vhdch0kc7wd3h04sgrvpmw7dqfkrcj2dppid5j8v29lnv";
        };
      };
    };
    "symfony/polyfill-iconv" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-iconv-6c2f78eb8f5ab8eaea98f6d414a5915f2e0fce36";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-iconv/zipball/6c2f78eb8f5ab8eaea98f6d414a5915f2e0fce36;
          sha256 = "0lhdmym9mlfgjhsrgmxfvpjrpsq1n2wh5jyrgqkwjv0jib4qhccr";
        };
      };
    };
    "symfony/polyfill-intl-grapheme" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-intl-grapheme-b740103edbdcc39602239ee8860f0f45a8eb9aa5";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-intl-grapheme/zipball/b740103edbdcc39602239ee8860f0f45a8eb9aa5;
          sha256 = "0dix3vwgz0bl5gbnaz10qnzxqzv5104ihbyxbvlxxp5ff87wdp2k";
        };
      };
    };
    "symfony/polyfill-intl-idn" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-intl-idn-5dcab1bc7146cf8c1beaa4502a3d9be344334251";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-intl-idn/zipball/5dcab1bc7146cf8c1beaa4502a3d9be344334251;
          sha256 = "015saw0cl3108lqqax58p9q608193hh89dav4ril54na1yz6r3lz";
        };
      };
    };
    "symfony/polyfill-intl-normalizer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-intl-normalizer-37078a8dd4a2a1e9ab0231af7c6cb671b2ed5a7e";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-intl-normalizer/zipball/37078a8dd4a2a1e9ab0231af7c6cb671b2ed5a7e;
          sha256 = "0dy6snii84dyific6xn6a3mz9shhp7wj4fyqjizg89jwvc3f7qdj";
        };
      };
    };
    "symfony/polyfill-mbstring" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-mbstring-a6977d63bf9a0ad4c65cd352709e230876f9904a";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-mbstring/zipball/a6977d63bf9a0ad4c65cd352709e230876f9904a;
          sha256 = "1i6fhjag28q3ynp7jfixm8rx1j1p9z88yvmcxzfkzjm1gl8v7w54";
        };
      };
    };
    "symfony/polyfill-php56" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php56-13df84e91cd168f247c2f2ec82cc0fa24901c011";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-php56/zipball/13df84e91cd168f247c2f2ec82cc0fa24901c011;
          sha256 = "0x5r3a44rcgvjwzm34h2q2z40svgnw8gi04narfn3wf3xvrbbz4a";
        };
      };
    };
    "symfony/polyfill-php70" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php70-0dd93f2c578bdc9c72697eaa5f1dd25644e618d3";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-php70/zipball/0dd93f2c578bdc9c72697eaa5f1dd25644e618d3;
          sha256 = "1mrsfx3pxs1wqz5bz24i1rxlsbv7bx8q5fndk7z53kb59jsg1837";
        };
      };
    };
    "symfony/polyfill-php72" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php72-639447d008615574653fb3bc60d1986d7172eaae";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-php72/zipball/639447d008615574653fb3bc60d1986d7172eaae;
          sha256 = "1kqxamfcf5k8i3fh3950syg91rsk4bhjm83w5qjbia6xfm03awxz";
        };
      };
    };
    "symfony/polyfill-php73" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php73-fffa1a52a023e782cdcc221d781fe1ec8f87fcca";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-php73/zipball/fffa1a52a023e782cdcc221d781fe1ec8f87fcca;
          sha256 = "07sv5hjmadp879rq2q50d9rbwi2ki6rkap98yn0h7hq82q2yh1f0";
        };
      };
    };
    "symfony/polyfill-php80" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php80-d87d5766cbf48d72388a9f6b85f280c8ad51f981";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-php80/zipball/d87d5766cbf48d72388a9f6b85f280c8ad51f981;
          sha256 = "1cxwqycsj776iqlib7np33l94ch3hal6a7dghq1b3xmm1j1450z7";
        };
      };
    };
    "symfony/polyfill-util" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-util-46b910c71e9828f8ec2aa7a0314de1130d9b295a";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-util/zipball/46b910c71e9828f8ec2aa7a0314de1130d9b295a;
          sha256 = "0qx2m6djjdjs07sirlaz20zafxvs4ds9s7za7vygk5n7cycaq4w3";
        };
      };
    };
    "symfony/process" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-process-1864216226af21eb76d9477f691e7cbf198e0402";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/process/zipball/1864216226af21eb76d9477f691e7cbf198e0402;
          sha256 = "19hjpabpfsbblcyqynrzb89d9lgj27l1vvwpmm7vx5s2mdxwihhn";
        };
      };
    };
    "symfony/psr-http-message-bridge" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-psr-http-message-bridge-e44f249afab496b4e8c0f7461fb8140eaa4b24d2";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/psr-http-message-bridge/zipball/e44f249afab496b4e8c0f7461fb8140eaa4b24d2;
          sha256 = "1z20fhkanyry43rx9y6wypsm7acqk77xb2wlninnjvidbrh505xw";
        };
      };
    };
    "symfony/routing" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-routing-47b0218344cb6af25c93ca8ee1137fafbee5005d";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/routing/zipball/47b0218344cb6af25c93ca8ee1137fafbee5005d;
          sha256 = "039pm3zpyp8hq5yhczaicximpl5m313b2nnkiqxj6sm50hrgjbjr";
        };
      };
    };
    "symfony/service-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-service-contracts-58c7475e5457c5492c26cc740cc0ad7464be9442";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/service-contracts/zipball/58c7475e5457c5492c26cc740cc0ad7464be9442;
          sha256 = "14rd5zcq3mk9l95m45y95lkydd72ak9cy5h3byviqpfzif1l3hq8";
        };
      };
    };
    "symfony/string" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-string-0de4cc1e18bb596226c06a82e2e7e9bc6001a63a";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/string/zipball/0de4cc1e18bb596226c06a82e2e7e9bc6001a63a;
          sha256 = "0jdd2p5mdkv9dknakr3qprpvhc69wsf90xwwwwq45y86x5r51sn1";
        };
      };
    };
    "symfony/translation" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-translation-917b02cdc5f33e0309b8e9d33ee1480b20687413";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/translation/zipball/917b02cdc5f33e0309b8e9d33ee1480b20687413;
          sha256 = "0shdm6xbawdbm782nmnda640gdyiqsd96vmsijjdn2sw8fcrrf11";
        };
      };
    };
    "symfony/translation-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-translation-contracts-616a9773c853097607cf9dd6577d5b143ffdcd63";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/translation-contracts/zipball/616a9773c853097607cf9dd6577d5b143ffdcd63;
          sha256 = "0zds6qqzj8gvalhjnksjp83gh5kla8l96sy4lbqyn6iv7q0n4ava";
        };
      };
    };
    "symfony/var-dumper" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-var-dumper-b43a3905262bcf97b2510f0621f859ca4f5287be";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/var-dumper/zipball/b43a3905262bcf97b2510f0621f859ca4f5287be;
          sha256 = "0axvyb9lv7da0w46qylisrqhfcd0akg8lb5jqjmcixmq653fnw7y";
        };
      };
    };
    "tightenco/collect" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "tightenco-collect-d7381736dca44ac17d0805a25191b094e5a22446";
        src = fetchurl {
          url = https://api.github.com/repos/tightenco/collect/zipball/d7381736dca44ac17d0805a25191b094e5a22446;
          sha256 = "0qzsr8q6x7ncwdpbp0w652gl260rwynxvrnsjvj86vjkbc4s0y8w";
        };
      };
    };
    "tijsverkoyen/css-to-inline-styles" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "tijsverkoyen-css-to-inline-styles-b43b05cf43c1b6d849478965062b6ef73e223bb5";
        src = fetchurl {
          url = https://api.github.com/repos/tijsverkoyen/CssToInlineStyles/zipball/b43b05cf43c1b6d849478965062b6ef73e223bb5;
          sha256 = "0lc6jviz8faqxxs453dbqvfdmm6l2iczxla22v2r6xhakl58pf3w";
        };
      };
    };
    "vlucas/phpdotenv" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "vlucas-phpdotenv-572af79d913627a9d70374d27a6f5d689a35de32";
        src = fetchurl {
          url = https://api.github.com/repos/vlucas/phpdotenv/zipball/572af79d913627a9d70374d27a6f5d689a35de32;
          sha256 = "0w6k7c5c66jrf1qyms7dddmqw50xlphlpn38n12agpkwjl85i6zm";
        };
      };
    };
    "voku/portable-ascii" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "voku-portable-ascii-25bcbf01678930251fd572891447d9e318a6e2b8";
        src = fetchurl {
          url = https://api.github.com/repos/voku/portable-ascii/zipball/25bcbf01678930251fd572891447d9e318a6e2b8;
          sha256 = "0z6mj7g9jdwg6fvxjrbachzwl7w5dvs7215nvf4h2i0lqvi0m88m";
        };
      };
    };
  };
  devPackages = {
    "doctrine/instantiator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-instantiator-f350df0268e904597e3bd9c4685c53e0e333feea";
        src = fetchurl {
          url = https://api.github.com/repos/doctrine/instantiator/zipball/f350df0268e904597e3bd9c4685c53e0e333feea;
          sha256 = "01a3px69q7ddlskaq9dc1w3cy6kyx07jxmagnnlhqkxjy2jl247q";
        };
      };
    };
    "facade/flare-client-php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "facade-flare-client-php-25907a113bfc212a38d458ae365bfb902b4e7fb8";
        src = fetchurl {
          url = https://api.github.com/repos/facade/flare-client-php/zipball/25907a113bfc212a38d458ae365bfb902b4e7fb8;
          sha256 = "1cvhgckpk1fq8k70sk3wr1pdp105kpl5kf1l93b8q7bvzqbmfzcz";
        };
      };
    };
    "facade/ignition" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "facade-ignition-d7d05dba5a0bdbf018a2cb7be268f22f5d73eb81";
        src = fetchurl {
          url = https://api.github.com/repos/facade/ignition/zipball/d7d05dba5a0bdbf018a2cb7be268f22f5d73eb81;
          sha256 = "1bsqaw9mhm3zp7p760vl1a31zj6dk9147xc32k1jv4hzxff2q40g";
        };
      };
    };
    "facade/ignition-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "facade-ignition-contracts-aeab1ce8b68b188a43e81758e750151ad7da796b";
        src = fetchurl {
          url = https://api.github.com/repos/facade/ignition-contracts/zipball/aeab1ce8b68b188a43e81758e750151ad7da796b;
          sha256 = "0b5hv56758fh2y6fqbygwn94qgqwjan8d2s1i10m242x80h9jjiw";
        };
      };
    };
    "filp/whoops" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "filp-whoops-5d5fe9bb3d656b514d455645b3addc5f7ba7714d";
        src = fetchurl {
          url = https://api.github.com/repos/filp/whoops/zipball/5d5fe9bb3d656b514d455645b3addc5f7ba7714d;
          sha256 = "09v5pzdjw92fi1xd4fa3h08mc55pg93za4nzd02n62x7vqp06mm8";
        };
      };
    };
    "fzaninotto/faker" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "fzaninotto-faker-fc10d778e4b84d5bd315dad194661e091d307c6f";
        src = fetchurl {
          url = https://api.github.com/repos/fzaninotto/Faker/zipball/fc10d778e4b84d5bd315dad194661e091d307c6f;
          sha256 = "152dwsxna09dpyys4265ryglzqdhsd2hsssr49a0p3sygv5rqki2";
        };
      };
    };
    "hamcrest/hamcrest-php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "hamcrest-hamcrest-php-8c3d0a3f6af734494ad8f6fbbee0ba92422859f3";
        src = fetchurl {
          url = https://api.github.com/repos/hamcrest/hamcrest-php/zipball/8c3d0a3f6af734494ad8f6fbbee0ba92422859f3;
          sha256 = "1ixmmpplaf1z36f34d9f1342qjbcizvi5ddkjdli6jgrbla6a6hr";
        };
      };
    };
    "mockery/mockery" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "mockery-mockery-20cab678faed06fac225193be281ea0fddb43b93";
        src = fetchurl {
          url = https://api.github.com/repos/mockery/mockery/zipball/20cab678faed06fac225193be281ea0fddb43b93;
          sha256 = "1z6xq18xwpvz6mgzx8jvpj2jcab6fmqbvvw18c6qsc9x23mahzmf";
        };
      };
    };
    "myclabs/deep-copy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "myclabs-deep-copy-969b211f9a51aa1f6c01d1d2aef56d3bd91598e5";
        src = fetchurl {
          url = https://api.github.com/repos/myclabs/DeepCopy/zipball/969b211f9a51aa1f6c01d1d2aef56d3bd91598e5;
          sha256 = "0i5aswlbn7pxhgwswpqxf5wdr1v40kic4a2z06xv77wnfkhb6myh";
        };
      };
    };
    "nunomaduro/collision" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nunomaduro-collision-d50490417eded97be300a92cd7df7badc37a9018";
        src = fetchurl {
          url = https://api.github.com/repos/nunomaduro/collision/zipball/d50490417eded97be300a92cd7df7badc37a9018;
          sha256 = "0l4g0apjisln3whlw4rdz86dlz7yji1g4r2b2sfrhv6zfmsvah3m";
        };
      };
    };
    "phar-io/manifest" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phar-io-manifest-7761fcacf03b4d4f16e7ccb606d4879ca431fcf4";
        src = fetchurl {
          url = https://api.github.com/repos/phar-io/manifest/zipball/7761fcacf03b4d4f16e7ccb606d4879ca431fcf4;
          sha256 = "1n59a0gnk43ryl54bc37hlsi1spvi8280bq64zddxrpagyjyp15a";
        };
      };
    };
    "phar-io/version" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phar-io-version-45a2ec53a73c70ce41d55cedef9063630abaf1b6";
        src = fetchurl {
          url = https://api.github.com/repos/phar-io/version/zipball/45a2ec53a73c70ce41d55cedef9063630abaf1b6;
          sha256 = "0syr7v2b3lsdavfa22z55sdkg5awc3jlzpgn0qk0d3vf6x96hvzp";
        };
      };
    };
    "phpdocumentor/reflection-common" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-reflection-common-1d01c49d4ed62f25aa84a747ad35d5a16924662b";
        src = fetchurl {
          url = https://api.github.com/repos/phpDocumentor/ReflectionCommon/zipball/1d01c49d4ed62f25aa84a747ad35d5a16924662b;
          sha256 = "1wx720a17i24471jf8z499dnkijzb4b8xra11kvw9g9hhzfadz1r";
        };
      };
    };
    "phpdocumentor/reflection-docblock" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-reflection-docblock-d870572532cd70bc3fab58f2e23ad423c8404c44";
        src = fetchurl {
          url = https://api.github.com/repos/phpDocumentor/ReflectionDocBlock/zipball/d870572532cd70bc3fab58f2e23ad423c8404c44;
          sha256 = "1ibs6sb0yd782vs1kpk7bn886pscrgpgkg5mr91kdaxzxqhcl76b";
        };
      };
    };
    "phpdocumentor/type-resolver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-type-resolver-e878a14a65245fbe78f8080eba03b47c3b705651";
        src = fetchurl {
          url = https://api.github.com/repos/phpDocumentor/TypeResolver/zipball/e878a14a65245fbe78f8080eba03b47c3b705651;
          sha256 = "1anwy26b1z9ymgy36ch7is27wnkrzl7v50cd69fz481paa9f9izk";
        };
      };
    };
    "phpspec/prophecy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpspec-prophecy-b20034be5efcdab4fb60ca3a29cba2949aead160";
        src = fetchurl {
          url = https://api.github.com/repos/phpspec/prophecy/zipball/b20034be5efcdab4fb60ca3a29cba2949aead160;
          sha256 = "0fwvxrprf87pfnmkqgpcfgv568r4amxh2x1p408cma26mplmfh94";
        };
      };
    };
    "phpunit/php-code-coverage" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-code-coverage-f1884187926fbb755a9aaf0b3836ad3165b478bf";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/php-code-coverage/zipball/f1884187926fbb755a9aaf0b3836ad3165b478bf;
          sha256 = "1vnahnjxshyvvx1j7dsqcw1wrmwkgp5zjd2yv9bzi1lkh1lkisqm";
        };
      };
    };
    "phpunit/php-file-iterator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-file-iterator-050bedf145a257b1ff02746c31894800e5122946";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/php-file-iterator/zipball/050bedf145a257b1ff02746c31894800e5122946;
          sha256 = "0b5y1dmksnzqps694h1bhw6r6w1cqrf3vhw2k00adjdawjzaa00j";
        };
      };
    };
    "phpunit/php-text-template" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-text-template-31f8b717e51d9a2afca6c9f046f5d69fc27c8686";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/php-text-template/zipball/31f8b717e51d9a2afca6c9f046f5d69fc27c8686;
          sha256 = "1y03m38qqvsbvyakd72v4dram81dw3swyn5jpss153i5nmqr4p76";
        };
      };
    };
    "phpunit/php-timer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-timer-1038454804406b0b5f5f520358e78c1c2f71501e";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/php-timer/zipball/1038454804406b0b5f5f520358e78c1c2f71501e;
          sha256 = "0vmaca44sz6n9avd8awzk28wq5w4qnvjfl24q89611pdnkl4j8d8";
        };
      };
    };
    "phpunit/php-token-stream" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-token-stream-995192df77f63a59e47f025390d2d1fdf8f425ff";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/php-token-stream/zipball/995192df77f63a59e47f025390d2d1fdf8f425ff;
          sha256 = "1hl3n6kad0n4vls1sy0qgrqw3caxm2z50adi3nhzx0asdsx85nfn";
        };
      };
    };
    "phpunit/phpunit" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-phpunit-34c18baa6a44f1d1fbf0338907139e9dce95b997";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/phpunit/zipball/34c18baa6a44f1d1fbf0338907139e9dce95b997;
          sha256 = "15p8is3rvk1h6wrzqkync98zaip3di0lr926r93j6yv638c6bsaz";
        };
      };
    };
    "scrivo/highlight.php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "scrivo-highlight.php-efb6e445494a9458aa59b0af5edfa4bdcc6809d9";
        src = fetchurl {
          url = https://api.github.com/repos/scrivo/highlight.php/zipball/efb6e445494a9458aa59b0af5edfa4bdcc6809d9;
          sha256 = "0hb1b4pw6p8lzjn136i6qc4l0ias09aq2hwnmdwg7pz74jf0vj8d";
        };
      };
    };
    "sebastian/code-unit-reverse-lookup" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-code-unit-reverse-lookup-4419fcdb5eabb9caa61a27c7a1db532a6b55dd18";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/code-unit-reverse-lookup/zipball/4419fcdb5eabb9caa61a27c7a1db532a6b55dd18;
          sha256 = "0n0bygv2vx1l7af8szbcbn5bpr4axrgvkzd0m348m8ckmk8akvs8";
        };
      };
    };
    "sebastian/comparator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-comparator-5de4fc177adf9bce8df98d8d141a7559d7ccf6da";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/comparator/zipball/5de4fc177adf9bce8df98d8d141a7559d7ccf6da;
          sha256 = "1kf0w51kj4whak8cdmplhj3vsvpj71bl0k3dyz197vvh83ghvl2i";
        };
      };
    };
    "sebastian/diff" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-diff-720fcc7e9b5cf384ea68d9d930d480907a0c1a29";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/diff/zipball/720fcc7e9b5cf384ea68d9d930d480907a0c1a29;
          sha256 = "0i81kz91grz5vzifw114kg6dcfh150019zid7j99j2y5w7s1fqq2";
        };
      };
    };
    "sebastian/environment" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-environment-464c90d7bdf5ad4e8a6aea15c091fec0603d4368";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/environment/zipball/464c90d7bdf5ad4e8a6aea15c091fec0603d4368;
          sha256 = "1dpd2x9yr02c4wf5icvgaw70i8bzxcmqab9plxjv00d712h73z08";
        };
      };
    };
    "sebastian/exporter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-exporter-68609e1261d215ea5b21b7987539cbfbe156ec3e";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/exporter/zipball/68609e1261d215ea5b21b7987539cbfbe156ec3e;
          sha256 = "0i8a502xqf2ripwbr5rgw9z49z9as7fjibh7sr171q0h4yrrr02j";
        };
      };
    };
    "sebastian/global-state" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-global-state-edf8a461cf1d4005f19fb0b6b8b95a9f7fa0adc4";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/global-state/zipball/edf8a461cf1d4005f19fb0b6b8b95a9f7fa0adc4;
          sha256 = "01wba1xd5qvcx1j0vldlyixjlbyvnxnm2vx1i2y1wqaldn8d1wy2";
        };
      };
    };
    "sebastian/object-enumerator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-object-enumerator-7cfd9e65d11ffb5af41198476395774d4c8a84c5";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/object-enumerator/zipball/7cfd9e65d11ffb5af41198476395774d4c8a84c5;
          sha256 = "00z5wzh19z1drnh52d27gflqm7dyisp96c29zyxrgsdccv1wss3m";
        };
      };
    };
    "sebastian/object-reflector" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-object-reflector-773f97c67f28de00d397be301821b06708fca0be";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/object-reflector/zipball/773f97c67f28de00d397be301821b06708fca0be;
          sha256 = "1rq5wwf7smdbbz3mj46hmjc643bbsm2b6cnnggmawyls479qmxlk";
        };
      };
    };
    "sebastian/recursion-context" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-recursion-context-5b0cd723502bac3b006cbf3dbf7a1e3fcefe4fa8";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/recursion-context/zipball/5b0cd723502bac3b006cbf3dbf7a1e3fcefe4fa8;
          sha256 = "0p4j54bxriciw67g7l8zy1wa472di0b8f8mxs4fdvm37asz2s6vd";
        };
      };
    };
    "sebastian/resource-operations" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-resource-operations-4d7a795d35b889bf80a0cc04e08d77cedfa917a9";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/resource-operations/zipball/4d7a795d35b889bf80a0cc04e08d77cedfa917a9;
          sha256 = "0prnq9hvg1bi3nkms21wl0fr0f28p0mhp5w802sqb05v9k0qnb41";
        };
      };
    };
    "sebastian/type" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-type-3aaaa15fa71d27650d62a948be022fe3b48541a3";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/type/zipball/3aaaa15fa71d27650d62a948be022fe3b48541a3;
          sha256 = "034sc9qiag074lsi990nfwzm9jnw9fysdwsd906146snqrxcqsk6";
        };
      };
    };
    "sebastian/version" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-version-99732be0ddb3361e16ad77b68ba41efc8e979019";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/version/zipball/99732be0ddb3361e16ad77b68ba41efc8e979019;
          sha256 = "0wrw5hskz2hg5aph9r1fhnngfrcvhws1pgs0lfrwindy066z6fj7";
        };
      };
    };
    "theseer/tokenizer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "theseer-tokenizer-75a63c33a8577608444246075ea0af0d052e452a";
        src = fetchurl {
          url = https://api.github.com/repos/theseer/tokenizer/zipball/75a63c33a8577608444246075ea0af0d052e452a;
          sha256 = "1cj1lb99hccsnwkq0i01mlcldmy1kxwcksfvgq6vfx8mgz3iicij";
        };
      };
    };
    "webmozart/assert" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "webmozart-assert-bafc69caeb4d49c39fd0779086c03a3738cbb389";
        src = fetchurl {
          url = https://api.github.com/repos/webmozart/assert/zipball/bafc69caeb4d49c39fd0779086c03a3738cbb389;
          sha256 = "0wd0si4c9r1256xj76vgk2slxpamd0wzam3dyyz0g8xgyra7201c";
        };
      };
    };
  };
in
composerEnv.buildPackage {
  inherit packages devPackages noDev;
  name = "pixelfed-pixelfed";
  src = ./.;
  executable = false;
  symlinkDependencies = false;
  meta = {
    license = "AGPL-3.0-only";
  };
}
