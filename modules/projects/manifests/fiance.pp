class projects::fiance {
  boxen::project { 'fiance':
    mongodb => true,
    nginx   => true,
    redis   => true,
    ruby    => '2.0.0-p353',
    source  => 'crowdtap/fiance'
  }
}
