# == Class: dell_openmanage::services
class dell_openmanage::services {
#  service {'dsm_om_connsvc':
#    ensure  => running,
#    enable  => true,
#    require => Package['srvadmin-base'],
#  }
#  service {'dsm_om_shrsvc':
#    ensure  => running,
#    enable  => true,
#    require => Package['srvadmin-base'],
#  }
  service {'dsm_sa_ipmi':
    ensure  => running,
    enable  => true,
    require => Package['srvadmin-base'],
  }
}
