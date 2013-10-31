require 'facter'
Facter.add("macaddress_idrac") do
  confine :kernel => "Linux"
  setcode do
  Facter::Util::Resolution.exec( "racadm getsysinfo | grep \"^MAC Address\" | awk '{ print $4}'" )
  end
end
