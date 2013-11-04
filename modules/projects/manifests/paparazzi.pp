class projects::paparazzi {
  boxen::project { 'paparazzi':
    mongodb   => true,
    redis     => true,
    ruby      => '1.9.3-p392',
    source    => 'crowdtap/paparazzi'
  }
}
