class projects::crowdtap {
  boxen::project { 'crowdtap':
    memcached => true,
    mongodb   => true,
    nginx     => 'projects/crowdtap-site.erb',
    redis     => true,
    ruby      => '2.1.0-github1',
    source    => 'crowdtap/crowdtap'
  }
}
