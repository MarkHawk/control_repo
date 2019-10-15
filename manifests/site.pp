node default {
  file {'/root/README':
    ensure  => file,
    content => 'this is a stupid readme',
    owner   => 'root',
  }
  file {'/root/README':
  owner   => 'root',
  }
}
