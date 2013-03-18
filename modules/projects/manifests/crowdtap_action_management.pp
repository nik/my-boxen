class projects::crowdtap_action_management{
  boxen::project { 'crowdtap.action-management':
    nodejs => '0.8',
    source => 'crowdtap/crowdtap.action-management'
  }
}
