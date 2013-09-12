Puppet Rundeck module
=====================

[![Build Status](https://secure.travis-ci.org/gini/puppet-rundeck.png)](http://travis-ci.org/gini/puppet-rundeck)

Overview
--------

A Puppet module to install and manage [Rundeck](http://rundeck.org/), an open-source process automation and command orchestration tool.

Currently this module only installs the Rundeck package and deploys a default configuration to `/etc/rundeck`.

NOTE: This module assumes that Rundeck can be installed by the respective package manager, e. g. from a private repository. Packages for Rundeck can be downloaded at [the project's website](http://rundeck.org/downloads.html).


Usage
-----

Example:

    class { 'rundeck': }


Supported Platforms
-------------------

The module has been tested on the following operating systems. Testing and patches for other platforms are welcome.

* Debian Linux 7.0 (Wheezy)


Support
-------

Please create bug reports and feature requests in [GitHub issues](https://github.com/gini/puppet-rundeck/issues).


Contributors
------------

* roidelapluie


License
-------

Copyright (c) 2013 smarchive GmbH, 2013 Gini GmbH

This script is licensed under the [Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0.html).
