# Basic environment needed for development

class crowdtap::environment {
  include java
  include elasticsearch
  include rabbitmq
  include xquartz

  package { 'imagemagick': }
  package { 'parallel': }
  package { 'qt': }

  nodejs::module { 'coffee-script':
    node_version => 'v0.8.23'
  }

  include crowdtap::dotfiles
  include crowdtap::gitconfig

  # general
  include chrome
  include hipchat
  include iterm2::dev
  include mou
  include sizeup

  include boxen::config

  homebrew::tap {
    'nviennot/tmate':
    } -> package { 'tmate':
    ensure => latest,
  }

  file {
    "${boxen::config::envdir}/tap.sh":
      ensure => absent ;
  }

  boxen::env_script { 'tap':
    content  => template('crowdtap/tap.sh'),
    priority => 'higher',
  }

  repository { "${boxen::config::home}/tap":
    ensure => 'origin/master',
    source => 'crowdtap/tap',
    user   => $::boxen_user
  }
}
