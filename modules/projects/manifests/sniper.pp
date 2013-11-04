class projects::sniper {
  boxen::project { 'sniper':
    mongodb   => true,
    nginx     => true,
    redis     => true,
    ruby      => '1.9.3-p392',
    source    => 'crowdtap/sniper'
  }
}
