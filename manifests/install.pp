# == Class: rundeck::install
#
# Install the Rundeck package.
#
class rundeck::install {
  package { 'rundeck':
    ensure => $rundeck::version,
  }
}
