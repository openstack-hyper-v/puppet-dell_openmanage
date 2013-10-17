class dell_openmanage::srvadmin{

  $dell_update_prereq = ['compat-libstdc++-33.i686','libstdc++.i686','libxml2.i686']

  $srv_admin_all = ['srvadmin-idrac-vmcli',
                    'srvadmin-isvc',
                    'srvadmin-argtable',
                    'srvadmin-racsvc',
                    'srvadmin-isvc-snmp',
                    'srvadmin-server-cli',
                    'srvadmin-storage',
                    'srvadmin-storageservices',
                    'srvadmin-standardAgent',
                    'srvadmin-idrac',
                    'srvadmin-smcommon',
                    'srvadmin-omilcore',
                    'srvadmin-omacs',
                    'srvadmin-ominst',
                    'srvadmin-rac-components',
                    'srvadmin-racdrsc',
                    'srvadmin-deng-snmp',
                    'srvadmin-omcommon',
                    'srvadmin-idracadm',
                    'srvadmin-rac5',
                    'srvadmin-idrac-snmp',
                    'srvadmin-server-snmp',
                    'srvadmin-idrac-ivmcli',
                    'srvadmin-rac4',
                    'srvadmin-jre',
                    'srvadmin-webserver',
                    'srvadmin-omacore',
                    'srvadmin-realssd',
                    'srvadmin-oslog',
                    'srvadmin-storelib',
                    'srvadmin-storage',
                    'srvadmin-storage-snmp',
                    'srvadmin-storageservices',
                    'srvadmin-itunnelprovider',
                    'srvadmin-all',
                    'srvadmin-hapi',
                    'srvadmin-deng',
                    'srvadmin-base',
                    'srvadmin-racadm4',
                    'srvadmin-sysfsutils',
                    'srvadmin-smweb',
                    'srvadmin-racadm5',
                    'srvadmin-rac4-populator',
                    'srvadmin-tomcat',
                    'srvadmin-xmlsup',
                    'srvadmin-rnasoap',
                    'srvadmin-storelib-sysfs',
                    'srvadmin-storageservices']


  package {'srvadmin-base':
    ensure => latest,
    require => Exec["dell-openmanage-${osfamily}-repo"]
  }
}
