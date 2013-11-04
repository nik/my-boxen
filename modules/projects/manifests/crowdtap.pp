class projects::crowdtap {
  boxen::project { 'crowdtap':
    memcached => true,
    mongodb   => true,
    nginx     => true,
    redis     => true,
    ruby      => '1.9.3-p392',
    source    => 'crowdtap/crowdtap'
  }
}
