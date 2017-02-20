class atom(
            $manage_package        = true,
            $package_ensure        = 'installed',
            $manage_service        = true,
            $manage_docker_service = true,
            $service_ensure        = 'running',
            $service_enable        = true,
            $srcdir                = '/usr/local/src',
            $add_default_plugins   = true,
            $atom_user             = 'root',
          ) inherits atom::params{

  validate_re($package_ensure, [ '^present$', '^installed$', '^absent$', '^purged$', '^held$', '^latest$' ], 'Not a supported package_ensure: present/absent/purged/held/latest')

  class { '::atom::install': } ->
  class { '::atom::config': } ->
  Class['::atom']

}
