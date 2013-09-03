# == Class: java::install
#
# This class installs Java for OS X (2013-004) if not already install.
#
# === Authors
#
# Ryan Skoblenick <ryan@skoblenick.com>
#
# === Copyright
#
# Copyright 2013 Ryan Skoblenick.
#
class java::install {
  case $::kernel {
    'Darwin': {
       $source = 'http://supportdownload.apple.com/download.info.apple.com/Apple_Support_Area/Apple_Software_Updates/Mac_OS_X/downloads/091-7278.20130621.Ts30t/JavaForOSX2013-004.dmg'
    }
    default: {
      fail("Unsupported Kernel: ${::kernel} operatingsystem: ${::operatingsystem}")
    }
  }
  package {'JavaForOSX2013-004.dmg':
    ensure => installed,
    source => $source,
    provider => pkgdmg,
  }
}