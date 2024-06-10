<?php
$CONFIG = array (
  'installed' => true,
  'version' => '29.0.1.1',
  'logdateformat' => 'F d, Y H:i:s',
  'log_type' => 'file',
  'logfile' => '/var/www/logs/nextcloud.log',
  'loglevel' => 5,
  'instanceid' => 'oc8c0fd71e04123213213',
  'passwordsalt' => '7KYbvOwyJ/gN26fP/admlAiBjYsEjD',
  'overwrite.cli.url' => 'https://USER_INPUT',
  'overwritehost' => 'USER_INPUT',
  'overwritewebroot' => '/',
  'overwriteprotocol' => 'https',
  'overwritecondaddr' => '',
  'trusted_domains' => 
  array (
    0 => 'USER_INPUT',
  ),
  'trusted_proxies' => 
  array (
    0 => 'USER_INPUT',
    1 => 'USER_INPUT',
  ),
  'forwarded_for_headers' => 
  array (
    0 => 'HTTP_X_FORWARDED_FOR',
    1 => 'HTTP_X_FORWARDED_HOST',
  ),
  'dbtype' => 'mysql',
  'dbname' => 'USER_INPUT',
  'dbhost' => '172.25.0.7',
  'dbtableprefix' => 'oc_',
  'dbuser' => 'USER_INPUT',
  'dbpassword' => 'USER_INPUT',
  'mysql.utf8mb4' => true,
  'memcache.local' => '\\OC\\Memcache\\Redis',
  'memcache.distributed' => '\\OC\\Memcache\\Redis',
  'memcache.locking' => '\\OC\\Memcache\\Redis',
  'filelocking.enabled' => 'true',
  'redis' => 
  array (
    'host' => '172.25.0.8',
    'port' => 6379,
  ),
  'secret' => 'jLlguIcF9erLb66loz6HqCiZT261M1zVZzhZOF4iVxS4/7C+',
  'dbport' => '',
  'datadirectory' => '/var/www/data',
  'maintenance_window' => 
  array (
    'start' => '02:00',
    'end' => '05:00',
  ),
  'maintenance_window_start' => 1,
  'default_phone_region' => 'BR',
  'default_timezone' => 'America/Sao_Paulo',
  'mail_from_address' => 'USER_INPUT',
  'mail_smtpmode' => 'smtp',
  'mail_sendmailmode' => 'smtp',
  'mail_domain' => 'USER_INPUT',
  'mail_smtphost' => 'USER_INPUT',
  'mail_smtpport' => '587',
  'mail_smtpauth' => 1,
  'mail_smtpname' => 'USER_INPUT',
  'mail_smtppassword' => 'USER_INPUT',
  'maintenance' => false,
);
