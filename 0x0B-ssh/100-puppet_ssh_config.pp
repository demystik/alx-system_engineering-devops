class ssh_config {
  ssh::client::config { 'ssh_config':
    ensure                => present,
    identity_file         => '~/.ssh/school',
    password_authentication => 'no',
  }
}

