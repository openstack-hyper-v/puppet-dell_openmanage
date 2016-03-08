# == Class dell_openmanage::firmware::update
class dell_openmanage::firmware::update {

  exec {'bootstrap_dell_firmware':
    command   => '/usr/bin/yum -y install $(bootstrap_firmware)',
    logoutput => true,
    timeout   => 0,
#    require   => Package['dell_ft_install'],
#    require   => Package[$dell_firmware_tool],
  }

  exec {'update-dell-firmware':
    command    => '/usr/sbin/update_firmware --yes',
    logoutput  => true,
    timeout    => 0,
    require    => Exec['bootstrap_dell_firmware'],
  }

}
