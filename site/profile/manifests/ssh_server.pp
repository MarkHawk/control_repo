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
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDJUX6gFJT0DmokqebhKHWjMxCZUB81IJLcZ119G792NUgNoo/IdKEaNwpUvqJD3B62ZZrFzeajWhFOWdM/vmixdOfEs3SBJ/OONodGxHmNpWjkjPhD4GobzMDG43aYhuTRXaE/XiS2K6r5VBADpIHNExtoZGXlXI8H96CcDFtMfbi3r5mlPn5Z7u4eWWyvwr2UR9F41toI6uquellMGuAM5HxNr1Z4iItkfcehc1XSuwu/s2gtkN62oKZYUCNnQBHO1SAS/rAi5p2LLZRUZwuDW5e1ZrWdkfPno8r/WrjMQSMrxjbNDO7stNrHZnqa4aHRmY4HHwT2X7tII/8nt',
  }  
}
