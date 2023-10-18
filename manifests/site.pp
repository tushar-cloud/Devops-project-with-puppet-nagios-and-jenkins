file { '/var/www/html/index.html':
  ensure  => present,
  content => "<html>\n<body>\n<h1>Hello, new Puppet!</h1>\n</body>\n</html>\n",
  owner   => 'root',  # Change this to the appropriate owner
  group   => 'root',  # Change this to the appropriate group
  mode    => '0644',
}