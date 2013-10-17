class dell_openmanage::firmware::update {

  package {'$(bootstrap_firmware)':
    ensure => installed,
  }

}
