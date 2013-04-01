class projects::sniper {
  include rabbitmq

  boxen::project { 'sniper':
    mongodb   => true,
    nginx     => true,
    redis     => true,
    ruby      => '1.9.3p392',
    source    => 'crowdtap/sniper'
  }
}
