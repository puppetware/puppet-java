# == Class: java
#
# This class is used to install Java for OS X (2013-004).
#
# === Examples
#
#  include java
#
#  or
#
#  class { java: }
#
# === Authors
#
# Ryan Skoblenick <ryan@skoblenick.com>
#
# === Copyright
#
# Copyright 2013 Ryan Skoblenick.
#
class java() {
  anchor {'java::begin': } ->
  class {'java::install': } ->
  anchor {'java::end': }
}