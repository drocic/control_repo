node default {
}
node 'web.puppet.vm' {
  include role::master_server
}
