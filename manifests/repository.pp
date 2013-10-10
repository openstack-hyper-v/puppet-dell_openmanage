class basenode::dell_hardware {

  $dell_repo_packages = ['dell-omsa-repository-2-5','yum-dellsysid']

  if ( $osfamily == 'RedHat') and ( $bios_vendor == 'Dell Inc.') {
    exec {'dell-openmanage-RedHat-repo':
      command   => '/usr/bin/wget -cv -o /root/DellOpenManage.log -O - http://linux.dell.com/repo/hardware/latest/bootstrap.cgi | /bin/bash',
      cwd       => '/root', 
      creates   => '/root/DellOpenManageRepo.log',
      logoutput => true,
    }

    package { $dell_repo_packages: 
      ensure   => latest,
      provider => 'yum',
      require => Exec['dell-openmanage-RedHat-repo'],
    }
  }

  if ( $osfamily == 'Debian') and ( $bios_vendor == 'Dell Inc.') {
    if $lsbdistid == 'Ubuntu' {
      exec {'dell-openmanage-Ubuntu-repo':
        command   => "echo 'deb http://linux.dell.com/repo/community/ubuntu precise openmanage' | sudo tee -a /etc/apt/sources.list.d/linux.dell.com.sources.list",
        cwd       => '/root',
        creates   => '/etc/apt/sources.list.d/linux.dell.com.sources.list',
        logoutput => true,
      }
    }

    if $lsbdistid == 'Debian'{
      exec {'dell-openmanage-Debian-repo':
        command   => "echo 'deb http://linux.dell.com/repo/community/ubuntu precise openmanage/730' | sudo tee -a /etc/apt/sources.list.d/linux.dell.com.sources.list",
        cwd       => '/root',
        creates   => '/etc/apt/sources.list.d/linux.dell.com.sources.list',
        logoutput => true,
      }
    }


    exec {'download-dell-gpg-key':
      command   => '/usr/bin/gpg --keyserver pool.sks-keyservers.net --recv-key 1285491434D8786F',
      cwd       => '/root',
      creates   => '/etc/apt/sources.list.d/linux.dell.com.sources.list',
      logoutput => true,
      require   => Exec["dell-openmanage-${lsbdistid}-repo"],
    }
    exec {'import-dell-gpg-key':
      command   => '/usr/bin/gpg -a --export 1285491434D8786F|apt-key add -',
      cwd       => '/root',
      user      => 'root',
      creates   => '/etc/apt/sources.list.d/linux.dell.com.sources.list',
      logoutput => true,
      require   => Exec['download-dell-gpg-key'],
    }
 
  }

}
