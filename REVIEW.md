A basic overview of the what should be reviewed.

### Prerequisites
Before you install Pixelfed, you will need to setup a webserver that meets the requirements:

- Apache (with mod_rewrite enabled) or Nginx
- MySQL 5.6+, PostgreSQL 10+ or MariaDB 10.2.7+
- PHP 7.2+ with the following extensions: bcmath, ctype, curl, exif, iconv, intl, json, mbstring, openssl, tokenizer, xml and zip
- Redis for in-memory caching and background task queueing
- ImageMagick for image processing
