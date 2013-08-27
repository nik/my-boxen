class crowdtap::environment {
  include java
  include xquartz

  package { 'imagemagick': }
  package { 'parallel': }
  package { 'qt': }

  nodejs::module { 'coffee-script':
    node_version => 'v0.8.23'
  }

  nodejs::module { 'coffee-script':
    node_version => 'v0.10.13'
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
