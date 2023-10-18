file { '/tmp/example_file':
    ensure => present,
    content => 'Hello, Puppet! updated',
}