# == Class: java::install
#
# Install Java for OS X
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

  $url_hash = $java::url_hash
  $version = $java::version

  notice(downcase($::osfamily))

  $source = downcase($::osfamily) ? {
    'darwin' => "http://supportdownload.apple.com/download.info.apple.com/Apple_Support_Area/Apple_Software_Updates/Mac_OS_X/downloads/${url_hash}/JavaForOSX${version}.dmg",
    #default => fail("Unsupported Kernel: ${::kernel} operatingsystem: ${::operatingsystem}")
  }

  package {"JavaForOSX${version}":
    ensure => installed,
    source => $source,
    provider => pkgdmg,
  }
}