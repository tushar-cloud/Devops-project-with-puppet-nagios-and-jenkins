# Define the Nagios class
class { 'nagios':
  config_file        => '/etc/nagios/nagios.cfg',
  manage_config_file => true,
}

# Configure Nagios server
class { 'nagios::server':
  use_ssl => false,
}

# Install NRPE on the server
class { 'nagios::client':
  nrpe => true,
}

# Define a Nagios service check (e.g., check_ssh)
nagios::resource::service { 'check_ssh':
  use            => 'generic-service',
  service_description => 'SSH Service',
  check_command  => 'check_nrpe!check_ssh',
  target         => '/etc/nagios/conf.d/check_ssh.cfg',
}

# Install Monit
class { 'monit':
  service_enable => true,
}

# Define a Monit check (e.g., check_system)
monit::check { 'check_system':
  test     => '/usr/bin/test -x /usr/bin/uptime',
  interval => 60,
  alert    => 'your-email@example.com',
}
