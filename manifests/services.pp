class dell_openmanage::services {

  service {'dsm_om_connsvc':
    ensure   => running,
    enabled => true,
  }

  service {'dsm_om_shrsvc':
    ensure   => running,
    enabled => true,
  }

  service {'dsm_sa_ipmi
    ensure   => running,
    enabled => true,
  }
}
