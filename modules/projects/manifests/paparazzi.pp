class projects::paparazzi {
  boxen::project { 'paparazzi':
    mongodb   => true,
    redis     => true,
    ruby      => '2.0.0-p353',
    source    => 'crowdtap/paparazzi'
  }
}
