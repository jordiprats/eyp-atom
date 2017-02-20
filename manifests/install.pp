class atom::install inherits atom {

  Exec {
    path => '/usr/sbin:/usr/bin:/sbin:/bin',
  }

  if($atom::manage_package)
  {
    exec { 'which wget eyp-atom':
      command => 'which wget',
      unless  => 'which wget',
    }

    exec { 'wget atom':
      command => "wget ${atom::params::atom_download_url} -O ${atom::srcdir}/atom.${atom::params::package_provider}",
      creates => "${atom::srcdir}/atom.${atom::params::package_provider}",
      require => Exec['which wget eyp-atom'],
    }

    package { $atom::params::package_name:
      ensure   => $atom::package_ensure,
      source   => "${atom::srcdir}/atom.${atom::params::package_provider}",
      provider => $atom::params::package_provider,
      require  => Exec['wget atom'],
    }
  }

}
