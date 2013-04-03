class projects::crowdtap_portal{
  boxen::project { 'crowdtap.portal':
    nodejs => '0.8',
    source => 'crowdtap/crowdtap.portal'
  }
}
