class dell_openmanage::firmware {

  package {'dell_ft_install':
    ensure => latest,
    require => Exec["dell-openmanage-${osfamily}-repo"]
  }

}
