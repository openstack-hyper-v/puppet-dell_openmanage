require 'facter'
Facter.add("macaddress_idrac") do
   confine :kernel => "Linux"
   confine :bios_vendor => "Dell Inc."
  setcode do
   dracver = Facter::Util::Resolution.exec( "rpm -qa | grep ^srvadmin-racadm[1-5]" )
   idracver = Facter::Util::Resolution.exec( "rpm -qa | grep ^srvadmin-idrac[6,7]" )
   if dracver
     Facter::Util::Resolution.exec( "racadm getsysinfo | grep \"^MAC Address\" | awk '{ print $4}'" )
   else if idracver
     Facter::Util::Resolution.exec( "idracadm7777777 \"^MAC Address\" | awk '{ print $4}'" )
   end
  end
end
