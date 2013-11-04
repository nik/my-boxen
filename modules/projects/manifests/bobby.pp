class projects::bobby {
  boxen::project { 'bobby':
    mongodb   => true,
    redis     => true,
    ruby      => '2.0.0-p247',
    source    => 'crowdtap/bobby'
  }
}
