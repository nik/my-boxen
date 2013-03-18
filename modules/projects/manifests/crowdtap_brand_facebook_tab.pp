class projects::crowdtap_brand_facebook_tab{
  boxen::project { 'crowdtap.brand-facebook-tab':
    nodejs => '0.8',
    source => 'crowdtap/crowdtap.brand-facebook-tab'
  }
}
