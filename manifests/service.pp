# == Class: rundeck::service
#
# Manage the Rundeck service.
#
class rundeck::service {
  $ensure = $rundeck::start ? {
    true    => 'running',
    default => 'stopped',
  }

  service { 'rundeckd':
    ensure  => $ensure,
    enable  => $rundeck::enable,
    require => Class['rundeck::config'],
  }
}
