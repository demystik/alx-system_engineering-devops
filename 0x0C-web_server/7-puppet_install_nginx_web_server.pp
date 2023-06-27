#!/usr/bin/env bash
#this script configure server using puppet

class nginx {
 #this is class documentation
  package { 'nginx':
    ensure => installed,
  }

  file { '/etc/nginx/nginx.conf':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('nginx/nginx.conf.erb'),
    notify  => Service['nginx'],
  }

  file { '/etc/nginx/conf.d/redirect.conf':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('nginx/redirect.conf.erb'),
    notify  => Service['nginx'],
  }

  file { '/usr/share/nginx/html/index.html':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => 'Hello World!',
    notify  => Service['nginx'],
  }

  service { 'nginx':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
  }
}

