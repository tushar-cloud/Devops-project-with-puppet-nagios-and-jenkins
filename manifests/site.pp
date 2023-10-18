file { '/var/www/html/index.html':
  ensure  => present,
  content => "<html>\n<body>\n<h1>Hello, new Puppet!</h1>\n</body>\n</html>\n",
}