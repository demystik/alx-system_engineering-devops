#This file use puppet to create a file in /tmp with some other req.
file { '/tmp/school': #the path of the new file
  content => 'I love Puppet',
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
}
