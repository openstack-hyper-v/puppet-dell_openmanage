class dell_openmanage::firmware {
  case $osfamily {
    'RedHat': { $dell_firmware_tool = 'dell_ft_install' }
    'Debian': { $dell_firmware_tool = 'firmware-addon-dell' }
  }

  package { $dell_firmware_tool:
    ensure => latest,
    require => Class['dell_openmanage::repository'],
  }

}
