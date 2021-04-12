class profile::base {
  user {'admin':
    ensure => present,
  }
  include prile::ssh_server
}
