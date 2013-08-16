class projects::crowdtap_action_stats{
  boxen::project { 'crowdtap.action-stats':
    nodejs => 'v0.8.23',
    source => 'crowdtap/crowdtap.action-stats'
  }
}
