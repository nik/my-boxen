class projects::bobby {
  boxen::project { 'bobby':
    mongodb   => true,
    redis     => true,
    ruby      => '2.1.0-github1',
    source    => 'crowdtap/bobby'
  }
}
