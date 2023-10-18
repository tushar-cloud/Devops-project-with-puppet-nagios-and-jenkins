# Define a file resource to manage the index.html file
file { '/var/www/html/index.html':
  ensure  => present,     # This ensures that the file exists
  content => "<html>\n<body>\n<h1>Hello, Puppet!</h1>\n</body>\n</html>\n",
  owner   => 'www-data',  # Set the owner of the file (adjust as needed)
  group   => 'www-data',  # Set the group of the file (adjust as needed)
  mode    => '0644',       # Set the permissions of the file
  require => Package['apache2'],  # Make sure Apache is installed before managing the file
}

# Define a package resource to ensure Apache is installed
package { 'apache2':
  ensure => installed,
}

# Define a service resource to ensure Apache is running
service { 'apache2':
  ensure => running,
  enable => true,  # Start Apache on boot
  require => Package['apache2'],  # Make sure Apache is installed before managing the service
}
