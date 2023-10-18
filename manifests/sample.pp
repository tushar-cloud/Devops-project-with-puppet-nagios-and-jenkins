file { '/tmp/example_file':
    ensure => present,
    content => 'Hello, Puppet! updated',
}

define host {
    max_check_attempts 5
contact_groups           admins
    use         generic-host
    host_name   web-server
    alias       Web Server
    address     54.159.57.134
}

define service {
    use                 generic-service
    host_name           web-server
    service_description Webpage Change
check_command      check_ec2_webpage!http://54.159.57.134/sample.html!Tushar!Error: Desired string not found on the webpage
    contacts            nagiosadmin
    notifications_enabled  1
    notification_interval  0
   check_interval       20
}


