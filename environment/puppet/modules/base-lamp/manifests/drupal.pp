class base-lamp::drupal {

    file{'local.melendrez.com':
            path => '/home/vagrant/www/docroot/sites/local.melendrez.com',
            ensure => present,
            recurse => true,
            source => "puppet:///modules/base-lamp/drupal/local.melendrez.com",
            owner => vagrant,
            group => vagrant;
    }

}