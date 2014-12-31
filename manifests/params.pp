class dell_openmanage::params {
case $manufacturer {
  'Dell Inc.':{
    case $osfamily {
      'RedHat':{
      }
      'Debian':{
        case $lsbdistid {
          'Debian':{
          }
          'Ubuntu':{
          }
        }
      }
      'Windows':{
        warn('This module does not support Windows')
      }
      default:{
        warn("This module does not support your operating system family $osfamily")
      }
    }
  }
  default: {
    fail("Manufacturer ${manufacturer} is not supported by this Puppet Module")
  }
}
