require 'facter'
Facter.add("ipaddress_idrac") do
  confine :kernel => "Linux"
  setcode do
  Facter::Util::Resolution.exec( "racadm getniccfg | grep \"^IP Address\" | awk '{ print $4}'" )
  end
end
