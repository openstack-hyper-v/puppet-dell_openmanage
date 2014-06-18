class dell_openmanage::firmware {
  case $osfamily {
    'RedHat': { $dell_firmware_tool = 'dell_ft_install-1.1-1' }
    'Debian': { $dell_firmware_tool = 'firmware-addon-dell' }
  }

  package { $dell_firmware_tool:
    ensure => installed,
    require => Class['dell_openmanage::repository'],
  }

}
