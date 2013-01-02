# == Class: rundeck
#
# A basic module to manage Rundeck, an open-source process
# automation and command orchestration tool
#
# === Parameters
# [*version*]
#   The version of the Rundeck package to install
#
# [*enable*]
#   Should the service be enabled during boot time?
#
# [*start*]
#   Should the service be started by Puppet
class rundeck(
  $version         = 'present',
  $config_source   = 'puppet:///modules/rundeck/default_config',
  $enable          = true,
  $start           = true,
) {

  if(!is_array($config_source) and !is_string($config_source)) {
    fail('config_source must be either an array or a string')
  }

  validate_bool($enable)
  validate_bool($start)

  class{'rundeck::install': } ->
  class{'rundeck::config': } ~>
  class{'rundeck::service': } ->
  Class['rundeck']
}
