# Fixes bad `phpp` extensions to `php` in the WordPress file `wp-settings.php`.
exec { 'fix-wordpress':
  command => "sed -i 's/class-wp-locale.phpp/class-wp-locale.php/' /var/www/html/wp-includes/class-wp-locale.php",
  path    => ['/usr/local/bin/', '/bin/'],
}

