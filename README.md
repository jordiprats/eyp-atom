# atom

#### Table of Contents

1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Setup](#setup)
    * [What atom affects](#what-atom-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with atom](#beginning-with-atom)
4. [Usage](#usage)
5. [Reference](#reference)
5. [Limitations](#limitations)
6. [Development](#development)
    * [TODO](#todo)
    * [Contributing](#contributing)

## Overview

[atom](https://atom.io/) installation and plugin management

## Module Description

This module can install the atom editor and manage it's plugins. By default (can be disabled by setting **add_default_plugins** to **false**) installs the following plugins:
* aligner
* aligner-puppet
* atom-alignment
* autocomplete-ruby
* block-comment
* dockerletion
* git-plus
* language-docker
* language-puppet
* language-rspec
* linter
* markdown-writer
* minimap
* minimap-git-diff
* rspec-snippets

## Setup

### What atom affects

* can install atom using **atom repo** (https://atom.io/download/rpm and https://atom.io/download/deb)
* can install atom plugins using **atom_plugin** type

### Setup Requirements

This module requires pluginsync enabled

### Beginning with atom

```puppet
class { 'atom':
  atom_user => 'jprats',
}
```

## Usage

```puppet
atom_plugin { 'language-puppet':
  ensure => 'present',
  atom_user => $atom::atom_user,
}
```

## Reference

### classes

#### atom

* **manage_package**: manage atom package (default: true)
* **package_ensure**: atom package ensure (default: installed)
* **srcdir**: place to store temporal files (default: /usr/local/src)
* **add_default_plugins**: whether to install default plugins (default: true)
* **atom_user**: install plugins to this user (default: root)

### types

#### atom_plugin

* **name**: atom plugin to manage
* **atom_user**: (default: root)

## Limitations

Tested on:
* Ubuntu 14.04
* Ubuntu 16.04

## Development

We are pushing to have acceptance testing in place, so any new feature should
have some test to check both presence and absence of any feature

### TODO

nothing so far

### Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
