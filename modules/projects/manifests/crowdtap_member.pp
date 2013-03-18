class projects::crowdtap_member {
  boxen::project { 'crowdtap.member':
    nodejs => '0.8',
    source => 'crowdtap/crowdtap.member'
  }
}
