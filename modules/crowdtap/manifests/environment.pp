class crowdtap::environment {
  include nodejs::0-8
  include ruby::1_9_3
  include java
  include xquartz

  package { 'imagemagick': }
  package { 'parallel': }
  package { 'qt': }

  nodejs::module { 'coffee-script':
    node_version => 'v0.8'
  }

  include crowdtap::dotfiles
  include crowdtap::gitconfig

  # general
  include chrome
  include iterm2::dev
  include propane
  include mou
  include sizeup

  include projects::all
}
