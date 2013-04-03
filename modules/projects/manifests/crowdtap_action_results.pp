class projects::crowdtap_action_results{
  boxen::project { 'crowdtap.action-results':
    nodejs => '0.8',
    source => 'crowdtap/crowdtap.action-results'
  }
}
