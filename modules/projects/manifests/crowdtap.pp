class projects::crowdtap {
  include rabbitmq

  boxen::project { 'crowdtap':
    memcached => true,
    mongodb   => true,
    nginx     => true,
    redis     => true,
    ruby      => '1.9.3',
    source    => 'crowdtap/crowdtap'
  }
}
