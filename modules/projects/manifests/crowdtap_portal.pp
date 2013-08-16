class projects::crowdtap_portal{
  boxen::project { 'crowdtap.portal':
    nodejs => 'v0.8.23',
    source => 'crowdtap/crowdtap.portal'
  }
}
