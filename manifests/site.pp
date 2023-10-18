file { '/var/www/html/yourfile.txt':
  ensure  => present,     # This ensures that the file exists
  content => "This is the content of your file.\n",
}
