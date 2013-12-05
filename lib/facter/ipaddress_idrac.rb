require 'facter'
Facter.add("ipaddress_idrac") do
   confine :kernel => "Linux"
   confine :bios_vendor => "Dell Inc."
  setcode do
   dracver = Facter::Util::Resolution.exec( "rpm -qa | grep ^srvadmin-racadm[1-5]" )
   idracver = Facter::Util::Resolution.exec( "rpm -qa | grep ^srvadmin-idrac[6,7]" )
   if dracver
      Facter::Util::Resolution.exec( "racadm getniccfg |grep \"^IP Address      =\" |awk '{print $4}'" )
   elsif idracver
      Facter::Util::Resolution.exec( "idracadm7 getniccfg | grep \"^IP Address\s*=\" | awk '{ print $4}'" )
   end
  end
end
