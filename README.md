dell_openmanage
========

Puppet module to install dell openmanage components for dell servers
===================================================================

This Puppet module installs the Dell OpenManage Repository and Tools.
Currently this should work on CentOS/RedHat/ScientificLinux.

Additionally it should also install the Dell tools on Ubuntu/Debian.

This module is under development.   Use at your own risk.

OpenManage Installation
------------
Basic Installation can be achived by adding the class to your node definition.


    node foo.contoso.ltd {
      class {'dell_openmanage':}
    }

Upgrading Firmware
------------------
This Module can also be used to download the latest Dell updates and automatically
apply the updates to the node.
This can be achieved as follows


   node foo.contoso.ltd {
     class {'dell_openmanage::firmware::update':}
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
