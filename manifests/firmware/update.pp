class dell_openmanage::firmware::update {

  package {'$(bootstrap_firmware)':
    ensure  => latest,
    require => Package['dell_ft_install'],
  }

  exec {'update-dell-firmware':
    command    => '/usr/sbin/update_firmware --yes',
    logoutput  => true,
    timeout    => 0,
    require    => Package['$(bootstrap_firmware)'],
  }

}
