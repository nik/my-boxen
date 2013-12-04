# Basic environment needed for development

class crowdtap::environment {
  include java
  include elasticsearch
  include rabbitmq
  include xquartz

  package { 'imagemagick': }
  package { 'parallel': }
  package { 'qt': install_options => [ '--HEAD' ] }

  nodejs::module { 'coffee-script':
    node_version => 'v0.8.23'
  }

  include crowdtap::dotfiles
  include crowdtap::gitconfig

  # general
  include chrome
  include iterm2::dev
  include propane
  include mou
  include sizeup

  include boxen::config

  file {
    "${boxen::config::envdir}/tap.sh":
      ensure => absent ;
  }

  boxen::env_script { 'tap':
    content  => template('crowdtap/tap.sh'),
    priority => 'higher',
  }

  repository { "${boxen::config::home}/tap":
    ensure => 'master',
    source => 'crowdtap/tap',
    user   => $::boxen_user
  }
}
