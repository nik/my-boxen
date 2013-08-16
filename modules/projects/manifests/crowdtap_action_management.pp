class projects::crowdtap_action_management{
  boxen::project { 'crowdtap.action-management':
    nodejs => 'v0.8.23',
    source => 'crowdtap/crowdtap.action-management'
  }
}
