class dell_openmanage::srvadmin{

#  package {'srvadmin-base':
  package {'srvadmin-all':
    ensure => latest,
  }

}
