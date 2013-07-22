class rundeck::yumrepo ($enabled=1){
  yumrepo {
    'rundeck':
      baseurl  => 'http://repo.rundeck.org/repo/rundeck/1/release',
      gpgcheck => 0,
      enabled  => $enabled,
  }

  Yumrepo['rundeck'] -> Package['rundeck']

}
