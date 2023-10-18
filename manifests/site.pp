file { '/var/www/html/':
  ensure  => directory,
  source  => '/tmp/repository', # Use the cloned repository as the source
  recurse => true,
}
