class projects::crowdtap_action_results{
  boxen::project { 'crowdtap.action-results':
    nodejs => 'v0.8',
    source => 'crowdtap/crowdtap.action-results'
  }
}
