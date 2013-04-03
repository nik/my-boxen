class projects::crowdtap_header{
  boxen::project { 'crowdtap.header':
    nodejs => '0.8',
    source => 'crowdtap/crowdtap.header'
  }
}
