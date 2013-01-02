# == Class: rundeck::config
#
# Create configuration files for Rundeck.
#
class rundeck::config {
  file { '/etc/rundeck':
    ensure  => present,
    recurse => true,
    owner   => 'rundeck',
    group   => 'rundeck',
    mode    => '0640',
    source  => $rundeck::config_source,
  }
}
