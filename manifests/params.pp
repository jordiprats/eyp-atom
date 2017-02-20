class atom::params {

  $package_name='atom'

  case $::osfamily
  {
    'redhat':
    {
      $atom_download_url='https://atom.io/download/rpm'
      $package_provider = 'rpm'
    }
    'Debian':
    {
      $atom_download_url='https://atom.io/download/deb'
      $package_provider = 'dpkg'
    }
    default: { fail('Unsupported OS!')  }
  }
}
