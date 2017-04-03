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

A one-maybe-two sentence summary of what the module does/what problem it solves.
This is your 30 second elevator pitch for your module. Consider including
OS/Puppet version it works with.

## Module Description

If applicable, this section should have a brief description of the technology
the module integrates with and what that integration enables. This section
should answer the questions: "What does this module *do*?" and "Why would I use
it?"

If your module has a range of functionality (installation, configuration,
management, etc.) this is the time to mention it.

## Setup

### What atom affects

* A list of files, packages, services, or operations that the module will alter,
  impact, or execute on the system it's installed on.
* This is a great place to stick any warnings.
* Can be in list or paragraph form.

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

* **manage_package**:        = true,
* **package_ensure**:        = 'installed',
* **manage_service**:        = true,
* **manage_docker_service**: = true,
* **service_ensure**:        = 'running',
* **service_enable**:        = true,
* **srcdir**:                = '/usr/local/src',
* **add_default_plugins**:   = true,
* **atom_user**: (default: root)

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

TODO list

### Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
