require 'facter'
Facter.add("ipaddress_idrac") do
   confine :kernel => "Linux"
   confine :bios_vendor => "Dell Inc."
  setcode do
   biosver = Facter.value(:bios_version)
   if biosver < "6.0"
     Facter::Util::Resolution.exec( "racadm getniccfg | grep \"^IP Address\" | awk '{ print $4}'" )
   else
     Facter::Util::Resolution.exec( "idracadm7 getniccfg | grep \"^IP Address\s*=\" | awk '{ print $4}'" )
   end
  end
end
