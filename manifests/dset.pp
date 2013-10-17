class dell_openmanage::dset{

  notify {'Dell System E-Support Tool (DSET)':}
  if ( $osfamily == 'RedHat') and ( $bios_vendor == 'Dell Inc.') {
    exec {'dell-dset-install':
      command   => '/usr/bin/wget -cv -o /root/DellDSET.log -O - ftp://ftp.dell.com/FOLDER01377314M/1/dell-dset-lx64-3.4.0.137.bin | /bin/bash',
      cwd       => '/root',
      creates   => '/root/DellDSET.log',
      logoutput => true,
    }
  }


}
