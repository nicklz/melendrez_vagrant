<?php

if (!isset($drush_major_version)) {
  $drush_version_components = explode('.', DRUSH_VERSION);
  $drush_major_version = $drush_version_components[0];
}


$aliases['local'] = array(
  'site' => 'melendrez',
  'root' => '/home/vagrant/www/docroot',
  '%files' => 'sites/local.melendrez.com/files',
  'uri' => 'local.melendrez.com',
);
