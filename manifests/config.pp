class atom::config inherits atom {

  if($atom::add_default_plugins)
  {
    atom_plugin { 'aligner':
      ensure    => 'present',
      atom_user => $atom::atom_user,
    }

    atom_plugin { 'aligner-puppet':
      ensure    => 'present',
      atom_user => $atom::atom_user,
    }

    atom_plugin { 'atom-alignment':
      ensure    => 'present',
      atom_user => $atom::atom_user,
    }

    atom_plugin { 'autocomplete-ruby':
      ensure    => 'present',
      atom_user => $atom::atom_user,
    }

    atom_plugin { 'block-comment':
      ensure    => 'present',
      atom_user => $atom::atom_user,
    }

    atom_plugin { 'dockerletion':
      ensure    => 'present',
      atom_user => $atom::atom_user,
    }

    atom_plugin { 'git-plus':
      ensure    => 'present',
      atom_user => $atom::atom_user,
    }

    atom_plugin { 'language-docker':
      ensure    => 'present',
      atom_user => $atom::atom_user,
    }

    atom_plugin { 'language-puppet':
      ensure    => 'present',
      atom_user => $atom::atom_user,
    }

    atom_plugin { 'language-rspec':
      ensure    => 'present',
      atom_user => $atom::atom_user,
    }

    atom_plugin { 'linter':
      ensure    => 'present',
      atom_user => $atom::atom_user,
    }

    atom_plugin { 'markdown-writer':
      ensure    => 'present',
      atom_user => $atom::atom_user,
    }

    atom_plugin { 'minimap':
      ensure    => 'present',
      atom_user => $atom::atom_user,
    }

    atom_plugin { 'minimap-git-diff':
      ensure    => 'present',
      atom_user => $atom::atom_user,
    }

    atom_plugin { 'rspec-snippets':
      ensure    => 'present',
      atom_user => $atom::atom_user,
    }
  }
}
