class dell_openmanage::firmware::update {

  exec {'bootstrap_dell_firmware': 
    command   => '/usr/bin/yum -y $(bootstrap_firmware)',
    logoutput => true,
    timeout   => 0,
    require   => Package['dell_ft_install'],
  }

  exec {'update-dell-firmware':
    command    => '/usr/sbin/update_firmware --yes',
    logoutput  => true,
    timeout    => 0,
    require    => Exec['bootstrap_dell_firmware'],
    returns    => 1,
  }

}
