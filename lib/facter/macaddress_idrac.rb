require 'facter'
Facter.add("macaddress_idrac") do
   confine :kernel => "Linux"
   confine :bios_vendor => "Dell Inc."
  setcode do
   biosver = Facter.value(:bios_version)
   if biosver < "6.0"
     Facter::Util::Resolution.exec( "racadm getsysinfo | grep \"^MAC Address\" | awk '{ print $4}'" )
   else
     Facter::Util::Resolution.exec( "idracadm7777777 \"^MAC Address\" | awk '{ print $4}'" )
   end
  end
end
