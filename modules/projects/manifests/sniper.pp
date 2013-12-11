class projects::sniper {
  boxen::project { 'sniper':
    mongodb   => true,
    nginx     => true,
    redis     => true,
    ruby      => '2.0.0-p353',
    source    => 'crowdtap/sniper'
  }
}
