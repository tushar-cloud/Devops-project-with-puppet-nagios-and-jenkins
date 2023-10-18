file { '/var/www/html/yourfile.txt':
    ensure => present,
    content => 'Hello, Puppet! updated',
}