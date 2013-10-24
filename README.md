dell_openmanage
========

A Puppet module to install Dell OpenManage 
============================================================================

This Puppet module installs the Dell OpenManage Repository and Tools.
Information on the Dell OSMA tools can be found here:

  http://linux.dell.com/wiki/index.php/Repository/OSMA


Platforms Supported
-------------------
Currently this should work on the following:

 * CentOS 6.x
 * RedHat 6.x
 * ScientificLinux 6.x
 * Debian (Partial)
 * Ubuntu (Partial)

  
Partial work has been done to allow for install of the Dell tools on Ubuntu/Debian, however 
However all features are not tested/complete on those platforms.
This module is under development and has no affiliation with Dell.
Use at your own risk.


OpenManage Installation
------------
Basic Installation can be achived by adding the class to your node definition.

    node foo.contoso.ltd {
      class {'dell_openmanage':}
    }

Repository Installation Only
----------------------------

    node foo.contoso.ltd {
      class {'dell_openmanage::repository':}
    }

Upgrading Firmware
------------------
This Module can also be used to download the latest Dell updates and automatically
apply the updates to the node.  Basic installation includes this tool set however
installation of the firmware update tool only may be achieved bye the following:
   
    node foo.contoso.ltd {
      class {'dell_openmanage::firmware':}
    }

Executing Firmware Detetction and Upgrade
-----------------------------------------
The following can be used to initiate a Firmware Upgrade

    node foo.contoso.ltd {
      class {'dell_openmanage::firmware::update':}
    }


Additionally you may want to install and upgrade at the same time.

    node foo.contoso.ltd {
      class {'dell_openmanage':}
      class {'dell_openmanage::firmware::update':}
    }

Installing the Dell System E-Support Tool (DSET)
------------------------------------------------
    node foo.contoso.ltd {
      class {'dell_openmanage::dset':}
    }




Contributors
------------

 * Peter Pouliot <peter@pouliot.net>

Copyright and License
---------------------

Copyright (C) 2013 peter@pouliot.net

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
