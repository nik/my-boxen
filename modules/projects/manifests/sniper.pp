class projects::sniper {
  boxen::project { 'sniper':
    mongodb   => true,
    nginx     => true,
    redis     => true,
    ruby      => '2.1.0',
    source    => 'crowdtap/sniper'
  }
}
