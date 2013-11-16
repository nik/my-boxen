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
}
