class projects::crowdtap_action_stats{
  boxen::project { 'crowdtap.action-stats':
    nodejs => '0.8',
    source => 'crowdtap/crowdtap.action-stats'
  }
}
