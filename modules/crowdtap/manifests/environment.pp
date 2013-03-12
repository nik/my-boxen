class crowdtap::environment {
  include nodejs::0-8
  include ruby::1_9_3
  include java

  include crowdtap::dotfiles

  # general
  include chrome
  include iterm2::dev
  include propane
  include mou
  include sizeup

  # ruby projects
  include projects::crowdtap
  include projects::sniper
  include projects::iris
  include projects::fiance

  # node/spine projects
  #include projects::crowdtap_member
  #include projects::crowdtap_action-management
  #include projects::crowdtap_action-stats
  #include projects::crowdtap_action-brand-facebook-tab
}
