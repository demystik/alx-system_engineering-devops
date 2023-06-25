#This file kill a process killmenow
exec { 'kill process':
  command  => 'pkill killmenow',
  provider => 'shell',
}
