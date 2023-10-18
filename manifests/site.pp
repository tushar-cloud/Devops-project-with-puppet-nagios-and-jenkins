file { '/var/www/html/':
  ensure  => directory,
  source  => '/repository', # Use the cloned repository as the source
  recurse => true,
}
