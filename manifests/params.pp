# == Class: java::params
#
# Define default parameters.
#
# === Authors
#
# Ryan Skoblenick <ryan@skoblenick.com>
#
# === Copyright
#
# Copyright 2013 Ryan Skoblenick.
#
class java::params {

  $version = '2013-05'

  $url_hash = $version ? {
    '2013-004' => '091-7278.20130621.Ts30t',
    '2013-005' => '091-7364.20131014.Mmg65',
    '2013-05' => '091-7364.20131014.Mmg65',
    default => fail('Unrecognized version; URL hash could not be identified!')
  }

}