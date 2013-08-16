class projects::crowdtap_header{
  boxen::project { 'crowdtap.header':
    nodejs => 'v0.8.23',
    source => 'crowdtap/crowdtap.header'
  }
}
