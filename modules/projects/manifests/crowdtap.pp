class projects::crowdtap {
  boxen::project { 'crowdtap':
    memcached => true,
    mongodb   => true,
    nginx     => true,
    redis     => true,
    ruby      => '2.1.0-github1',
    source    => 'crowdtap/crowdtap'
  }
}
