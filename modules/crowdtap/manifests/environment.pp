# Basic environment needed for development

class crowdtap::environment {
  include java
  include elasticsearch
  include rabbitmq
  include xquartz

  package { 'imagemagick': }
  package { 'parallel': }
  package { 'qt': }
  package { 'reattach-to-user-namespace': }
  package { 'the_silver_searcher': }
  package { 'vim': }

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

  # Hacky way to install a gem into the system Ruby
  exec { 'install aws-sdk gem':
    command => "env -i zsh -c 'source /opt/boxen/env.sh && RBENV_VERSION=system ARCHFLAGS=-Wno-error=unused-command-line-argument-hard-error-in-future gem install --no-ri --no-rdoc aws-sdk'",
    user    => root
  }

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

  # include projects::all
}
