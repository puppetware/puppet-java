# == Class: java
#
# Install Java for OS X
#
# === Parameters:
#
# [*version*] Version of Java for OSX
# [*url_hash*] URL hash
#
# === Examples
#
#  class {'java':
#    'version' => '2013-004'
#  }
#
# === Authors
#
# Ryan Skoblenick <ryan@skoblenick.com>
#
# === Copyright
#
# Copyright 2013 Ryan Skoblenick.
#
class java(
  $url_hash = $java::params::url_hash,
  $version = $java::params::version
) inherits java::params {
  anchor {'java::begin': } ->
  class {'java::install': } ->
  anchor {'java::end': }
}