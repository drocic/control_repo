class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service {'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@localhost.localdomain':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDQtgfoOVkUEYWKTy3aAa79HqYOjbI374bA8q5NujtJ6fZVX5TCsT4iakN2Q8LbDQPBvkahj1zmHwb8ZNuu2SoE+621LKOM0Jd6rSOpGbYoGjvAg2UwRgT5KRSgIAbE34sOFW6c0oHVpMBpa+hmr7iC1+nPnTyQ6j3dcYwiVBnmIgA+RdbRA2mPMJVe1u4IfV2tbkN1O4mbLHmCz1tiL+D8Hb1ssHitI7uKgxPxf7N0zGeEuw+kuohIPhTjXhYWWQQjU/0PMGGFbYYh7Q2WvwlQo5VwMlZh3sH3jmnD35MYWU7vSDbO13dSDKKJDuCkToa7hcUEhS0bNhHrrAenvk9r',
  }
}
