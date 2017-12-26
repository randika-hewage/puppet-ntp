class ntp::install (
  $package_name   = $::ntp::package_name,
  $package_ensure = $::ntp::package_ensure,
){
package { $package_name:
  ensure => $package_ensure,
}
}
