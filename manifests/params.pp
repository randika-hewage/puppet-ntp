class ntp::params {
  $package_name = 'ntp'
  $package_ensure = 'present'
  $config_name = 'ntp.conf'
  $config_file_mode = '0664'
  $servers = ['0.centos.pool.ntp.org', '1.centos.pool.ntp.org']
  $service_ensure = 'running'
  $service_enable = true
  $service_hasretart = true
  $service_hasrestart = true
  $service_hasstatus = true
  
  $servce_name = $facts['os']['family'] ? {
  'Redhat' => 'ntpd',
  'Debian' => 'ntp',
  default => fail("This ${facts['os']['name']}  not supported by this module")
}
