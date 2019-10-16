class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDDMq020E9/ZRo5EF6AfM7Yzxig80TcKJxIzcPN2xcPXjrYPA6wJN8AQhRAbVBU3ygwA6Q6R8pbSLLW9417IoCONw+ojHlhHlp4b1zipUxKwfr7/gm6sXTZ06uNWNVxVGJRuKCWGmArzYnPe4swmQYfnwTtB7rqI+xRGH1Azl6PgazooUmywHHrtu+Ojw9HdFx3wom7HR4bJvoIZr47kM8ZOrIQIPMEdD6w6dYLOVpd846IpHR1pdbVh4R875tBdlbORDogo/Nmr/sVxZQL4DU3x8AMbD5Vmyl9kXH1rmrKMfJojoWKWiZimTbfcTIPuXWEvXRaWO4rp5TIS/1fi1jp',
  }  
}
