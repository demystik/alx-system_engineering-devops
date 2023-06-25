exec { "kill process":
  command  => "pkill killmenow",
  provider => 'shell',
}
