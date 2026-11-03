<?php

$requiredEnv = static function (string $name): string {
    $value = getenv($name);
    if ($value === false || $value === '') {
        throw new RuntimeException("Missing environment variable: {$name}");
    }
    return $value;
};

define('HOST', $requiredEnv('DB_HOST'));
define('PORT', (int) ($requiredEnv('DB_PORT') ?: '3306'));
define('NAME', $requiredEnv('DB_DATABASE'));
define('USER', $requiredEnv('DB_USER'));
define('PASS', $requiredEnv('DB_PASS'));

$clan_name = getenv('CLAN_NAME') ?: 'My BF4 Server';
$banner_image = getenv('BANNER_IMAGE') ?: './common/images/bf4-logo.png';
$banner_url = getenv('BANNER_URL') ?: 'https://tyger07.github.io/BF4-Server-Stats/';