class projects::crowdtap_member {
  boxen::project { 'crowdtap.member':
    nodejs => 'v0.8.23',
    source => 'crowdtap/crowdtap.member'
  }
}
